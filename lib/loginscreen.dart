import 'package:finalproject/home_screen.dart';
import 'package:finalproject/layout_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
  int Tapindex = 0;
  LoginScreen(int ind) {
    this.Tapindex = ind;
  }
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailControlar = TextEditingController();
  TextEditingController passwordControlar = TextEditingController();
  TextEditingController firstNameControlar = TextEditingController();
  TextEditingController lastNameControlar = TextEditingController();
  TextEditingController conPasswordControlar = TextEditingController();

  bool isPassword = true;
  bool isconfirm = true;
  bool ischek = false;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: this.widget.Tapindex,
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xff151515),
        body: Form(
          key: _formkey,
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 79, bottom: 20),
                  child: new SvgPicture.asset(
                    'assets/image/p1.svg',
                    height: 71,
                    width: 180,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ),
              TabBar(
                isScrollable: true,
                padding: EdgeInsets.only(top: 46, right: 46, left: 46),
                indicatorSize: TabBarIndicatorSize.values[0],
                indicatorColor: Color(0xffff0000),
                labelColor: Color(0xffd6d6d6),
                labelStyle: TextStyle(
                  fontSize: 30,
                ),
                tabs: [
                  Tab(
                    text: ' LOGIN ',
                  ),
                  Tab(
                    text: 'SIGN UP',
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 48, right: 48),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'email shuldnt be empty';
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: emailControlar,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Color(0xffd6d6d6)),
                                ),
                                labelText: 'Email',
                                labelStyle: TextStyle(color: Color(0xff2f3233)),
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  color: Color(0xff2f3233),
                                ),
                              ),
                              style: TextStyle(color: Color(0xffd6d6d6)),
                            ),
                            SizedBox(
                              height: 45.9,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Password shuldnt be empty';
                                } else {
                                  return null;
                                }
                              },
                              obscureText: isPassword,
                              keyboardType: TextInputType.visiblePassword,
                              controller: passwordControlar,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Color(0xffd6d6d6)),
                                ),
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  color: Color(0xff2f3233),
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xff2f3233),
                                ),
                                suffixIcon: IconButton(
                                  icon: isPassword
                                      ? Icon(
                                          Icons.visibility_off,
                                          color: Color(0xffd6d6d6),
                                        )
                                      : Icon(
                                          Icons.visibility,
                                          color: Color(0xffd6d6d6),
                                        ),
                                  onPressed: () {
                                    setState(() {
                                      isPassword = !isPassword;
                                    });
                                  },
                                ),
                              ),
                              style: TextStyle(color: Color(0xffd6d6d6)),
                            ),
                            SizedBox(
                              height: 38,
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                  side: MaterialStateBorderSide.resolveWith(
                                      ((states) => BorderSide(
                                            color: Color(0xffd6d6d6),
                                          ))),
                                  value: ischek,
                                  onChanged: (value) {
                                    setState(() {
                                      ischek = !ischek;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Keep me signed in',
                                  style: TextStyle(
                                    color: Color(0xffd6d6d6),
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 23,
                            ),
                            MaterialButton(
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LayoutScreen()),
                                      (route) => false);
                                }
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              minWidth: MediaQuery.of(context).size.width - 100,
                              height: 50,
                              color: Color(0xffff0000),
                              child: Center(
                                child: Text(
                                  'login',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Color(0xffdfdfdf),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(11),
                              child: Text(
                                'OR Login With',
                                style: TextStyle(
                                  color: Color(0xff616161),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                new SvgPicture.asset(
                                  'assets/image/G.svg',
                                  height: 38,
                                  width: 38,
                                  allowDrawingOutsideViewBox: true,
                                ),
                                SizedBox(
                                  width: 58,
                                ),
                                new SvgPicture.asset(
                                  'assets/image/A.svg',
                                  height: 38,
                                  width: 38,
                                  allowDrawingOutsideViewBox: true,
                                ),
                                SizedBox(
                                  width: 58,
                                ),
                                new SvgPicture.asset(
                                  'assets/image/F.svg',
                                  height: 38,
                                  width: 38,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Don’t have an Account?',
                                    style: TextStyle(
                                      color: Color(0xff616161),
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginScreen(1)));
                                      },
                                      child: Text(
                                        'Sign up here',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xffdfdfdf),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 2,
                                padding: EdgeInsets.only(left: 46),
                                child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Enter your first name';
                                    } else {
                                      return null;
                                    }
                                  },
                                  keyboardType: TextInputType.name,
                                  controller: firstNameControlar,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Color(0xffd6d6d6)),
                                    ),
                                    labelText: 'First name',
                                    labelStyle:
                                        TextStyle(color: Color(0xff2f3233)),
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Color(0xff2f3233),
                                    ),
                                  ),
                                  style: TextStyle(color: Color(0xffd6d6d6)),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 2,
                                padding: EdgeInsets.only(left: 6, right: 46),
                                child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Enter your last name';
                                    } else {
                                      return null;
                                    }
                                  },
                                  keyboardType: TextInputType.name,
                                  controller: lastNameControlar,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Color(0xffd6d6d6)),
                                    ),
                                    labelText: 'Last name',
                                    labelStyle:
                                        TextStyle(color: Color(0xff2f3233)),
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Color(0xff2f3233),
                                    ),
                                  ),
                                  style: TextStyle(color: Color(0xffd6d6d6)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 46, right: 46),
                            child: Column(
                              children: [
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'email shuldnt be empty';
                                    } else {
                                      return null;
                                    }
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  controller: emailControlar,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Color(0xffd6d6d6)),
                                    ),
                                    labelText: 'Email',
                                    labelStyle:
                                        TextStyle(color: Color(0xff2f3233)),
                                    prefixIcon: Icon(
                                      Icons.email_outlined,
                                      color: Color(0xff2f3233),
                                    ),
                                  ),
                                  style: TextStyle(color: Color(0xffd6d6d6)),
                                ),
                                SizedBox(
                                  height: 45,
                                ),
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Password shuldnt be empty';
                                    } else {
                                      return null;
                                    }
                                  },
                                  obscureText: isPassword,
                                  keyboardType: TextInputType.visiblePassword,
                                  controller: passwordControlar,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Color(0xffd6d6d6)),
                                    ),
                                    labelText: 'Password',
                                    labelStyle: TextStyle(
                                      color: Color(0xff2f3233),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Color(0xff2f3233),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: isPassword
                                          ? Icon(
                                              Icons.visibility_off,
                                              color: Color(0xffd6d6d6),
                                            )
                                          : Icon(
                                              Icons.visibility,
                                              color: Color(0xffd6d6d6),
                                            ),
                                      onPressed: () {
                                        setState(() {
                                          isPassword = !isPassword;
                                        });
                                      },
                                    ),
                                  ),
                                  style: TextStyle(color: Color(0xffd6d6d6)),
                                ),
                                SizedBox(
                                  height: 45,
                                ),
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Password shuldnt be empty';
                                    }
                                    if (value != passwordControlar) {
                                      return "Passwords Didin't match";
                                    } else {
                                      return null;
                                    }
                                  },
                                  obscureText: isconfirm,
                                  keyboardType: TextInputType.visiblePassword,
                                  controller: conPasswordControlar,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Color(0xffd6d6d6)),
                                    ),
                                    labelText: ' Confirm Password',
                                    labelStyle: TextStyle(
                                      color: Color(0xff2f3233),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Color(0xff2f3233),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: isconfirm
                                          ? Icon(
                                              Icons.visibility_off,
                                              color: Color(0xffd6d6d6),
                                            )
                                          : Icon(
                                              Icons.visibility,
                                              color: Color(0xffd6d6d6),
                                            ),
                                      onPressed: () {
                                        setState(() {
                                          isconfirm = !isconfirm;
                                        });
                                      },
                                    ),
                                  ),
                                  style: TextStyle(color: Color(0xffd6d6d6)),
                                ),
                                SizedBox(
                                  height: 23,
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    if (_formkey.currentState!.validate()) {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LayoutScreen()),
                                          (route) => false);
                                    }
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  minWidth:
                                      MediaQuery.of(context).size.width - 100,
                                  height: 50,
                                  color: Color(0xffff0000),
                                  child: Center(
                                    child: Text(
                                      'Sign up',
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Color(0xffdfdfdf),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(11),
                                  child: Text(
                                    'OR sign up With',
                                    style: TextStyle(
                                      color: Color(0xff616161),
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    new SvgPicture.asset(
                                      'assets/image/G.svg',
                                      height: 38,
                                      width: 38,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                    SizedBox(
                                      width: 58,
                                    ),
                                    new SvgPicture.asset(
                                      'assets/image/A.svg',
                                      height: 38,
                                      width: 38,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                    SizedBox(
                                      width: 58,
                                    ),
                                    new SvgPicture.asset(
                                      'assets/image/F.svg',
                                      height: 38,
                                      width: 38,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

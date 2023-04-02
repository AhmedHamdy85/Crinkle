import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:finalproject/cardscreen.dart';
import 'package:finalproject/favoret.dart';
import 'package:finalproject/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  Widget page = HomeScreen();
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   backgroundColor: Color(0xff151515),
      //   child: ListView(
      //     children: [
      //       // UserAccountsDrawerHeader(
      //       //   accountName: Text('Iti'),
      //       //   accountEmail: Text('iti@eg.com'),
      //       //   currentAccountPicture: CircleAvatar(
      //       //     backgroundImage: AssetImage('assets/image/p2.png'),
      //       //   ),
      //       // ),
      //       Card(
      //         child: ListTile(
      //           onTap: () {},
      //           title: ,
      //           trailing:
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: new SvgPicture.asset(
            'assets/image/p1.svg',
            height: 51,
            width: 130,
            allowDrawingOutsideViewBox: true,
          ),
        ),
        backgroundColor: Color(0xff151515),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Color(0xffdfdfdf),
            ),
          ),
          IconButton(
            onPressed: () {
              // Drawer(
              //   child: ListView(
              //     children: [
              //       UserAccountsDrawerHeader(
              //         accountName: Text('Iti'),
              //         accountEmail: Text('iti@eg.com'),
              //         currentAccountPicture: CircleAvatar(
              //           backgroundImage: AssetImage('assets/image/p1.jpg'),
              //         ),
              //       ),
              //       Card(
              //         child: ListTile(
              //           onTap: () {},
              //           title: Text('File'),
              //           trailing: Icon(Icons.file_copy),
              //         ),
              //       ),
              //     ],
              //   ),
              // );
            },
            icon: Icon(
              Icons.menu,
              color: Color(0xffdfdfdf),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xff151515),
      drawerScrimColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        backgroundColor: Color(0xff151515).withOpacity(0),
        color: Color(0xff0a0a0a),
        animationDuration: Duration(microseconds: 300),
        onTap: (index) {
          if (index == 0) {
            setState(() {
              page = FavoretScreen();
            });
          } else if (index == 1) {
            setState(() {
              page = HomeScreen();
            });
          } else if (index == 2) {
            setState(() {
              page = Cart();
            });
          }
        },
        items: [
          Container(
            height: 34.9,
            width: 30,
            child: Icon(
              Icons.favorite_rounded,
              color: Color(0xffdfdfdf),
            ),
          ),
          Container(
            height: 30,
            width: 30,
            child: Icon(
              Icons.home_filled,
              color: Color(0xffdfdfdf),
            ),
          ),
          Container(
            height: 34.9,
            width: 30,
            child: Icon(
              Icons.shopping_cart_rounded,
              color: Color(0xffdfdfdf),
            ),
          ),
        ],
      ),
      body: page,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetelseScreen extends StatefulWidget {
  List<Map> product = [];
  late int i;
  DetelseScreen(int i, List<Map> L1) {
    this.product = L1;
    this.i = i;
  }

  @override
  State<DetelseScreen> createState() => _DetelseScreenState();
}

class _DetelseScreenState extends State<DetelseScreen> {
  int c = 0;
  num total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151515),
      appBar: AppBar(
        backgroundColor: Color(0xff151515),
        title: Text(
          'Details',
          style: TextStyle(fontSize: 35, color: Color(0xffdfdfdf)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.favorite,
              color: Color(0xffff0000),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              color: Color(0xff1a1919),
              height: 1,
              width: MediaQuery.of(context).size.width - 41,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 439,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff272727),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      '${this.widget.product[widget.i]['image']}',
                      width: MediaQuery.of(context).size.width - 140,
                      height: (MediaQuery.of(context).size.width - 40) / 2,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 19, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${this.widget.product[widget.i]['title']}',
                                style: TextStyle(
                                    fontSize: 25, color: Color(0xffdfdfdf)),
                              ),
                              Text(
                                '${this.widget.product[widget.i]['message']}',
                                style: TextStyle(
                                    fontSize: 25, color: Color(0xffff0000)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 34, left: 15, right: 20),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (c > 0) {
                                  c--;
                                }
                              });
                            },
                            child: Container(
                              width: 41.3,
                              height: 31.7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff121212),
                              ),
                              child: Icon(
                                Icons.minimize,
                                color: Color(0xffff0000),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 34),
                          child: Container(
                            child: Text(
                              '$c',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Color(0xffff0000),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 34, left: 15),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                {
                                  c++;
                                }
                              });
                            },
                            child: Container(
                              width: 41.3,
                              height: 31.7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff121212),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xffff0000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex e......... Read more',
                      maxLines: 4,
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffdfdfdf),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Total',
              style: TextStyle(
                color: Color(0xffdfdfdf),
                fontSize: 20,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 20),
                child: Text(
                  '$total',
                  style: TextStyle(fontSize: 35, color: Color(0xffff0000)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: MaterialButton(
                  minWidth: 200,
                  onPressed: () {},
                  color: Color(0xffff0000),
                  child: Text(
                    'Add to cart',
                    style: TextStyle(fontSize: 25, color: Color(0xffdfdfdf)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget BildItem() {
  return Container(
    width: 100,
    height: 140,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff272727),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 140,
            width: 100,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/image/Mayo Chickzza.png'),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, bottom: 6, right: 20),
                          child: Container(
                            width: 100 * 0.44,
                            child: Text(
                              'Brunch Box',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 9,
                          ),
                          child: Text(
                            '18\$',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xffff0000),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, bottom: 10),
                      child: Container(
                        width: 100 * 0.3,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff121212)),
                        child: Icon(
                          Icons.add,
                          color: Color(0xffff0000),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

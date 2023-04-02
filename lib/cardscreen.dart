import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  //const Body({Key? key}) : super(key: key);
  List mydata = [
    {
      'title': 'Mayo Chickzza',
      'message': 20,
      'image': 'assets/images/Mayo_Chickzza.png'
    },
    {
      'title': 'Brunch Box',
      'message': 18,
      'image': 'assets/images/Brunch_Box.png'
    },
    {'title': 'Combo', 'message': 5, 'image': 'assets/images/Combo.png'},
    {
      'title': 'Mayo Original',
      'message': 15,
      'image': 'assets/images/Mayo_Original.png'
    },
    {
      'title': 'Mayo Pizza',
      'message': 15,
      'image': 'assets/images/Mayo_Pizza Fries.png'
    },
    {
      'title': 'Tasty Doner',
      'message': 20,
      'image': 'assets/images/Tasty_Doner.png'
    },
    {
      'title': 'Treo Rice',
      'message': 20,
      'image': 'assets/images/Treo_Rice.png'
    },
    {
      'title': 'Zinger Zest',
      'message': 18,
      'image': 'assets/images/Zinger_Zest.png'
    },
    {
      'title': 'Mayo Chickzza',
      'message': 20,
      'image': 'assets/images/Mayo_Chickzza.png'
    },
    {
      'title': 'Brunch Box',
      'message': 18,
      'image': 'assets/images/Brunch_Box.png'
    },
    {'title': 'Combo', 'message': 5, 'image': 'assets/images/Combo.png'},
    {
      'title': 'Mayo Original',
      'message': 15,
      'image': 'assets/images/Mayo_Original.png'
    },
    {
      'title': 'Mayo Pizza',
      'message': 15,
      'image': 'assets/images/Mayo_Pizza Fries.png'
    },
    {
      'title': 'Tasty Doner',
      'message': 20,
      'image': 'assets/images/Tasty_Doner.png'
    },
    {
      'title': 'Treo Rice',
      'message': 20,
      'image': 'assets/images/Treo_Rice.png'
    },
    {
      'title': 'Zinger Zest',
      'message': 18,
      'image': 'assets/images/Zinger_Zest.png'
    },
  ];

  int count = 0;
  List<int> c = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  num total = 0;
  @override
  Widget build(BuildContext context) {
    double widthDev = MediaQuery.of(context).size.width;
    //print(widthDev);
    return Container(
        color: Color(0xff151515),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Color(0xff272727),
              child: Column(
                //mainAxisAlignment:MainAxisAlignment.start ,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: widthDev * (15 / 360),
                      ),
                      Text(
                        'Item Total',
                        style: TextStyle(
                          fontSize: widthDev * (20 / 360),
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: widthDev * (130 / 360),
                      ),
                      SizedBox(
                        width: widthDev * (95 / 360),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '$total \$',
                              style: TextStyle(
                                fontSize: widthDev * (20 / 360),
                                color: Color(0xffff0000),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      width: widthDev - 60,
                      height: 1,
                      color: Color(0xff393939),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: widthDev * (15 / 360),
                      ),
                      Text(
                        'Delivery Fee',
                        style: TextStyle(
                          fontSize: widthDev * (20 / 360),
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: widthDev * (110 / 360),
                      ),
                      SizedBox(
                        width: widthDev * (95 / 360),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '0.00 \$',
                              style: TextStyle(
                                fontSize: widthDev * (20 / 360),
                                color: Color(0xffff0000),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      width: widthDev - 60,
                      height: 1,
                      color: Color(0xff393939),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: widthDev * (15 / 360),
                      ),
                      Text(
                        'Discount',
                        style: TextStyle(
                          fontSize: widthDev * (20 / 360),
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: widthDev * (145 / 360),
                      ),
                      SizedBox(
                        width: widthDev * (95 / 360),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '0%',
                              style: TextStyle(
                                fontSize: widthDev * (20 / 360),
                                color: Color(0xffff0000),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      width: widthDev - 60,
                      height: 1,
                      color: Color(0xff393939),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: widthDev * (15 / 360),
                      ),
                      Text(
                        'Sub Total',
                        style: TextStyle(
                          fontSize: widthDev * (30 / 360),
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: widthDev * (95 / 360),
                      ),
                      SizedBox(
                        width: widthDev * (95 / 360),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '$total \$',
                              style: TextStyle(
                                fontSize: widthDev * (30 / 360),
                                color: Color(0xffff0000),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        child: Center(
                          child: Text(
                            'Checkout',
                            style: TextStyle(
                              fontSize: widthDev * (30 / 360),
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        width: widthDev / 1.7,
                        height: widthDev / 6,
                        color: Color(0xff121212),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              //child: ,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: widthDev - 60,
                height: .5,
                color: Color(0xff393939),
              ),
            ),
            for (int i = 0; i < mydata.length; i++)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color(0xff272727),
                  child: Row(
                    children: [
                      SizedBox(
                          width: widthDev * (80 / 360),
                          height: widthDev * (80 / 360),
                          child: Image(
                            image: AssetImage(mydata[i]['image']),
                            width: widthDev * (80 / 360),
                            height: widthDev * (80 / 360),
                          )),
                      SizedBox(width: widthDev * (5 / 360)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: widthDev * (150 / 360),
                            child: Text(
                              mydata[i]['title'],
                              style: TextStyle(
                                fontSize: widthDev * (20 / 360),
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(
                                width: widthDev * (50 / 360),
                                child: Center(
                                  child: Text(
                                    '${mydata[i]['message']} \$',
                                    style: TextStyle(
                                      color: Color(0xffff0000),
                                      fontWeight: FontWeight.bold,
                                      fontSize: widthDev * (20 / 360),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: widthDev * (10 / 360)),
                              SizedBox(
                                width: widthDev * (35 / 360),
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      c[i]--;
                                      itemTotal();
                                    });
                                  },
                                  color: Color(0xff121212),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          widthDev * (20 / 360))),
                                  height: 15,
                                  child: Icon(Icons.remove,
                                      color: Color(0xffff0000),
                                      size: widthDev * (20 / 360)),
                                ),
                              ),
                              SizedBox(width: widthDev * (5 / 360)),
                              SizedBox(
                                width: widthDev * (40 / 360),
                                child: Center(
                                  child: Text(
                                    '${c[i]}',
                                    style: TextStyle(
                                      color: Color(0xffff0000),
                                      fontWeight: FontWeight.bold,
                                      fontSize: widthDev * (20 / 360),
                                    ),
                                  ),
                                ),
                              ),
                              //SizedBox(width: 10),
                              SizedBox(
                                width: widthDev * (35 / 360),
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      c[i]++;
                                      itemTotal();
                                    });
                                  },
                                  color: Color(0xff121212),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          widthDev * (20 / 360))),
                                  height: 10,
                                  //minWidth: 1,
                                  child: Icon(Icons.add,
                                      color: Color(0xffff0000),
                                      size: widthDev * (20 / 360)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: widthDev * (20 / 360)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: widthDev * (40 / 360),
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      c[i] = 0;
                                      itemTotal();
                                    });
                                  },
                                  color: Color(0xff121212),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          widthDev * (20 / 360))),
                                  height: 10,
                                  minWidth: 1,
                                  child: Icon(Icons.delete,
                                      color: Color(0xffff0000),
                                      size: widthDev * (20 / 360)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(
                                width: widthDev * (55 / 360),
                                child: Text(
                                  '${c[i] * mydata[i]['message']} \$',
                                  style: TextStyle(
                                    color: Color(0xffff0000),
                                    fontWeight: FontWeight.bold,
                                    fontSize: widthDev * (20 / 360),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
          ],
        ));
  }

  void itemTotal() {
    total = 0;
    for (int i = 0; i < mydata.length; i++) {
      total += c[i] * mydata[i]['message'];
      print(total);
    }
  }
}

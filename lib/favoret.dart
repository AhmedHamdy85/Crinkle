import 'package:flutter/material.dart';

class FavoretScreen extends StatefulWidget {
  @override
  State<FavoretScreen> createState() => _FavoretScreenState();
}

class _FavoretScreenState extends State<FavoretScreen> {
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
            for (int i = 0; i < mydata.length; i++)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color(0xff272727),
                  child: Row(
                    children: [
                      SizedBox(width: widthDev * (10 / 360)),
                      SizedBox(
                          width: widthDev * (80 / 360),
                          height: widthDev * (80 / 360),
                          child: Image(
                            image: AssetImage(mydata[i]['image']),
                            width: widthDev * (80 / 360),
                            height: widthDev * (80 / 360),
                          )),
                      SizedBox(width: widthDev * (10 / 360)),
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
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: widthDev * (25 / 360)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: widthDev * (60 / 360),
                            child: MaterialButton(
                              onPressed: () {
                                setState(() {});
                              },
                              color: Color(0xff121212),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      widthDev * (10 / 360))),
                              height: 10,
                              //minWidth: 1,
                              child: Icon(Icons.add,
                                  color: Color(0xffff0000),
                                  size: widthDev * (40 / 360)),
                            ),
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
}

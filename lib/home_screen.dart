import 'package:finalproject/detiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double wids = (MediaQuery.of(context).size.width - 60) / 2;
    List<Map> mydata = [
      {
        'title': 'Mayo Chickzza',
        'message': '20 \$',
        'image': 'assets/image/Mayo Chickzza.png'
      },
      {
        'title': 'Brunch Box      ',
        'message': '18 \$',
        'image': 'assets/image/Brunch Box.png'
      },
      {
        'title': 'Combo             ',
        'message': '5 \$',
        'image': 'assets/image/Combo.png'
      },
      {
        'title': 'Mayo Original ',
        'message': '15 \$',
        'image': 'assets/image/Mayo Original.png'
      },
      {
        'title': 'Mayo Pizza     ',
        'message': '15 \$',
        'image': 'assets/image/Mayo Pizza Fries.png'
      },
      {
        'title': 'Tasty Doner    ',
        'message': '20 \$',
        'image': 'assets/image/Tasty Doner.png'
      },
    ];
    List titels = [
      'All menu',
      'Chicken Strips',
      'Chicken Strips',
      'Grilled Chicken Burgers',
    ];
    // titels.addAll({
    //   'All menu',
    //   'Chicken Strips',
    //   'Chicken Wrap',
    //   'Grilled Chicken Burgers'
    // });
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Container(
              color: Color(0xff1a1919),
              height: 1,
              width: MediaQuery.of(context).size.width - 41,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 68,
              child:
                  //  ListView(
                  //   children: [
                  //     for (int i = 0; i < titels.length; i++) BildMinu(i, titels),
                  //   ],
                  // ),
                  ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return BildMinu();
                },
                separatorBuilder: (contex, index) => SizedBox(
                  width: 0,
                ),
                itemCount: 7,
              ),
            ),
          ),
          Center(
            child: Container(
              color: Color(0xff1a1919),
              height: 1,
              width: MediaQuery.of(context).size.width - 41,
            ),
          ),
          for (int i = 0; i < mydata.length; i++)
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetelseScreen(i, mydata)));
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff272727),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 220,
                      width: wids,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 165,
                            width: 165,
                            child: Image.asset(mydata[i]['image']),
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
                                      width: wids * 0.44,
                                      child: Text(
                                        '${mydata[i]['title']}',
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
                                      '${mydata[i]['message']}',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffff0000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 10, bottom: 10),
                                child: Container(
                                  width: wids * 0.3,
                                  height: 35,
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
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetelseScreen(i, mydata)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff272727),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 220,
                      width: wids,
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 165,
                              width: 165,
                              child: Image.asset(mydata[i]['image'])),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, bottom: 6, right: 20),
                                    child: Container(
                                      width: wids * 0.44,
                                      child: Text(
                                        '${mydata[i]['title']}',
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
                                      '${mydata[i]['message']}',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffff0000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 10, bottom: 10),
                                child: Container(
                                  width: wids * 0.3,
                                  height: 35,
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
                ),
              ],
            ),
        ],
      ),
    );
  }
}

Widget BildMinu() {
  return Padding(
    padding: EdgeInsets.only(bottom: 20, top: 20, right: 10),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xff393939),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 29,
      width: 78,
      child: Center(
        child: Text(
          'All menu',
          style: TextStyle(fontSize: 15, color: Color(0xffffffff)),
        ),
      ),
    ),
  );
}

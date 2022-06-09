import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gold/constants/colors.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'My Card',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Color(0xff79F06A), filedColor])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.ccVisa,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      'Balance',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '\$4000',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .merge(TextStyle(color: Color(0xff79F06A))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '**** 0123',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text('05/25')
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.all(8),
                      color: filedColor.withOpacity(0.45),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Income',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '+\$40000',
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .merge(TextStyle(color: Color(0xff79F06A))),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            color: Color(0xff4D39D2C0),
                            child: Row(
                              children: [
                                Text(
                                  '4.5%',
                                  style: TextStyle(color: Color(0xff39D2C0)),
                                ),
                                Icon(
                                  Icons.trending_up,
                                  color: Color(0xff79F06A),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                  Container(
                      padding: EdgeInsets.all(8),
                      color: filedColor.withOpacity(0.45),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Spending',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '+\$400',
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .merge(TextStyle(color: Color(0xffF06A6A))),
                          ),
                          Container(
                            color: Color(0xff9AF06A6A),
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Text(
                                  '4.5%',
                                  style: TextStyle(color: Color(0xffF06A6A)),
                                ),
                                Icon(
                                  Icons.trending_down,
                                  color: Color(0xffF06A6A),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              color: Color(0xff79F06A),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Quick Service',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          padding: EdgeInsets.all(8),
                          color: filedColor,
                          child: Column(children: [
                            Icon(
                              Icons.swap_horiz,
                              color: Colors.white,
                            ),
                            Text('Transfer',
                                style: TextStyle(color: Colors.grey))
                          ])),
                      Container(
                          padding: EdgeInsets.all(8),
                          color: filedColor,
                          child: Column(children: [
                            Icon(
                              Icons.pause,
                              color: Colors.white,
                            ),
                            Text(
                              'Pause',
                              style: TextStyle(color: Colors.grey),
                            )
                          ])),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'Transactions',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xff6639D2C0).withOpacity(0.4),
                        child: Icon(
                          Icons.attach_money,
                          color: Color(0xff39D2C0),
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Transaction Name',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          Text(
                            'Income',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Transaction Amount',
                            maxLines: 2,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .merge(TextStyle(
                                    color: Color(
                                      0xff39D2C0,
                                    ),
                                    fontSize: 12)),
                          ),
                          Text('relative')
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

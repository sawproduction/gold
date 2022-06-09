import 'package:flutter/material.dart';
import 'package:gold/constants/colors.dart';
import 'package:gold/constants/images.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: height * 0.05, horizontal: width * 0.03),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(width * 0.03),
                  color: filedColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/my-profile');
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100000),
                          child: Image.network(
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                              'https://picsum.photos/id/237/200/300'),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome, display name',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          Text(
                            'Your account details are below',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'Total Cash Balance',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$25000',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromRGBO(255, 255, 255, 0.094))),
                          onPressed: () {
                            Navigator.pushNamed(context, '/conversions');
                          },
                          child: Text('Add funds'))
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          Navigator.pushNamed(context, '/transactions');
                        },
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Image.asset(
                              stock,
                              width: width / 2,
                            ),
                            Text(
                              'Gold Price',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            Positioned(
                              top: 40,
                              child: Text(
                                '186360',
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Image.asset(
                            stock,
                            width: width / 2,
                          ),
                          Text(
                            'Gold Price',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          Positioned(
                            top: 40,
                            child: Text(
                              '186360',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Image.asset(
                            stock,
                            width: width / 2,
                          ),
                          Text(
                            'Gold Price',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          Positioned(
                            top: 40,
                            child: Text(
                              '186360',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.grey,
                    child: Column(
                      children: [
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            Navigator.pushNamed(context, '/vault');
                          },
                          child: Image.asset(
                            logo,
                            width: width * 0.3,
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            Navigator.pushNamed(context, '/gold');
                          },
                          child: Image.asset(
                            convert,
                            width: width * 0.3,
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            Navigator.pushNamed(context, '/payment-complete');
                          },
                          child: Image.asset(
                            transaction,
                            width: width * 0.3,
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            Navigator.pushNamed(context, '/checkout');
                          },
                          child: Image.asset(
                            forgot,
                            width: width * 0.27,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.03),
              color: Colors.orange.withOpacity(0.5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      Text(
                        'New Alert',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      Text('View Now')
                    ],
                  ),
                  Text(
                    'Lorem ipsum Wagera Wagera',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

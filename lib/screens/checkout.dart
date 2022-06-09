import 'package:flutter/material.dart';
import 'package:gold/constants/colors.dart';
import 'package:gold/constants/images.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF1F4F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          'My Cart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order Total',
                  style: TextStyle(color: Colors.grey),
                ),
                Text('\$33')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.white,
              child: Row(
                children: [
                  Image.asset(
                    logo,
                    width: width / 4 / 2,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Container(
                    width: width * 0.8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Product Name',
                            style: Theme.of(context).textTheme.headline1),
                        Text(
                          'Color: green',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.remove_rounded),
                                Text('0'),
                                Icon(Icons.add)
                              ],
                            ),
                            Text('Price'),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Summary',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .merge(TextStyle(color: Colors.black)),
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text('\$33')
                    ],
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                logo,
                width: width / 5 / 2,
              ),
              Image.asset(
                logo,
                width: width / 5 / 2,
              ),
            ],
          ),
          const Spacer(),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width * 0.03),
              color: filedColor,
            ),
            child: Center(
              child: Text(
                'Checkout',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          )
        ],
      ),
    );
  }
}

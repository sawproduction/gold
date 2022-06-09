import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gold/constants/colors.dart';

class PaymentComplete extends StatelessWidget {
  const PaymentComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: filedColor,
                  child: Icon(
                    Icons.close,
                  ),
                )
              ],
            ),
            CircleAvatar(
              radius: width * 0.05,
              backgroundColor: filedColor,
              child: Icon(Icons.check),
            ),
            Text(
              'Payment Confirmed',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .merge(TextStyle(color: Color(0xff4B39EF))),
            ),
            Text(
              '\$3333',
              style: Theme.of(context).textTheme.headline1!.merge(TextStyle(
                  fontWeight: FontWeight.normal, color: Colors.black)),
            ),
            Text(
              'Your payment has been confirmed, it may take 1-2 hours in order for your payment to go through and show up in your transation list.',
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              decoration: BoxDecoration(
                color: filedColor,
                borderRadius: BorderRadius.circular(width * 0.03),
              ),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.ccMastercard,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Column(
                    children: [
                      Text(
                        'Mastercard ending in 4000',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text('\$33'),
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(width * 0.3))),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                        horizontal: width * 0.2, vertical: height * 0.02)),
                    backgroundColor: MaterialStateProperty.all(filedColor)),
                onPressed: () {},
                child: Text('Confirm',
                    style: Theme.of(context).textTheme.subtitle1)),
            SizedBox(
              height: height * 0.03,
            )
          ],
        ),
      )),
    );
  }
}

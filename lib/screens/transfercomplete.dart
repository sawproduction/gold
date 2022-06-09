import 'package:flutter/material.dart';
import 'package:gold/constants/colors.dart';
import 'package:gold/constants/images.dart';

class TransferComplete extends StatelessWidget {
  const TransferComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff8B97A2),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Transfer Complete',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Image.asset(logo),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Great work, you successfully transferred funds. It may take a few minutes-hours for the funds to leave your account.',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: width * 0.1)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width * 0.08))),
                  backgroundColor: MaterialStateProperty.all(filedColor)),
              onPressed: () {},
              child: Text('Okay'))
        ],
      )),
    );
  }
}

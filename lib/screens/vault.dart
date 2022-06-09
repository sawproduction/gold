import 'package:flutter/material.dart';
import 'package:gold/constants/colors.dart';
import 'package:gold/constants/images.dart';

class Vault extends StatelessWidget {
  const Vault({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.asset(splash),
              Positioned(
                top: 65,
                left: 70,
                child: Image.asset(
                  convert,
                  width: width / 4,
                ),
              ),
              Positioned(
                top: 60,
                right: 70,
                child: Image.asset(
                  logo,
                  width: width / 4,
                ),
              ),
              Text(
                "Your Gold Balance 12,500 oz/gr/g",
                style: Theme.of(context).textTheme.headline1!.merge(
                    TextStyle(color: Colors.black, fontSize: width * 0.06)),
              )
            ],
          ),
          Row(
            children: [Image.asset(logo, width: width / 4)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Palladium Balance \n 12,000 Oz',
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      )),
    );
  }
}

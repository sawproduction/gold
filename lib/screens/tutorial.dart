import 'package:flutter/material.dart';
import 'package:gold/constants/colors.dart';
import 'package:gold/constants/images.dart';

class Tutorial extends StatelessWidget {
  const Tutorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            )),
        title: Text(
          'Tutorial',
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .merge(TextStyle(color: filedColor)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              logo,
              width: width * 0.3,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Image.asset(send),
            Text(
              'Send Gold or any precious metals in your digital vault to anyone in the world for free!',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .merge(TextStyle(color: filedColor)),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              'Elminate costly storage, and shipping fees.',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

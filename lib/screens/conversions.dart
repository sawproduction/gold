import 'package:flutter/material.dart';

class Conversions extends StatefulWidget {
  @override
  _ConversionsState createState() => _ConversionsState();
}

class _ConversionsState extends State<Conversions> {
  get image1 => Image.network(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRuG7rY-aMVNtrxqSgMqHgcvDsxFUQxWwS1Kt3roUHa3T5fsVfEo0YwiYNiT9tfEWnG_Q&usqp=CAU');

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.brown.shade500,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: height / 8),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.swap_horizontal_circle,
                      size: 75, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 4),
            Container(
              child: Expanded(
                  child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: height * 0.2,
                        ),
                        Text(
                          'Ship Commodities in your Vault to YOU!!!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: height * 0.1,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade800),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(width: width * 0.38, child: image1),
                                Container(width: width * 0.38, child: image1),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(width: width * 0.38, child: image1),
                                Container(width: width * 0.38, child: image1),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Ship your commodities to us, for use in your Gold Account',
                          style: TextStyle(
                              fontSize: height * 0.07, color: Colors.amber),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}

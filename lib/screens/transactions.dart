import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  get image1 => Image.network(
      'https://atlas-content-cdn.pixelsquid.com/assets_v2/250/2506956478477243483/previews/G16-200x200.jpg');
  get image2 => Image.network(
      'https://atlas-content-cdn.pixelsquid.com/assets_v2/250/2506955487707141152/previews/G16-200x200.jpg');
  get image3 => Image.network(
      'https://atlas-content-cdn.pixelsquid.com/assets_v2/213/2134345790380840359/previews/G03-200x200.jpg');
  get image4 => Image.network(
      'https://atlas-content-cdn.pixelsquid.com/assets_v2/12/1203763170578011381/previews/G03-200x200.jpg');

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.brown.shade500,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height / 8),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Back',
                    style:
                        TextStyle(fontSize: width * 0.05, color: Colors.white),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.swap_horizontal_circle,
                    size: 45,
                    color: Color(0xff1C4715),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    'Transactions',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )),
            ),
            SizedBox(height: 4),
            Container(
              child: Expanded(
                  child: Card(
                color: Colors.brown.shade300,
                child: Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'This Month',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CardWidget(
                          title: 'New Release', width: width, image: image1),
                      CardWidget(
                          title: 'Nike Airmax 90', width: width, image: image2),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Last Month',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CardWidget(
                          title: 'Air Force 1', width: width, image: image3),
                      CardWidget(
                          title: 'Lebron 19', width: width, image: image4),
                      SizedBox(
                        height: 15,
                      ),
                    ],
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

class CardWidget extends StatelessWidget {
  const CardWidget(
      {Key? key, required this.width, required this.image, required this.title})
      : super(key: key);

  final double width;
  final image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(width: width * 0.15, child: image),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$title",
                        style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Feb 15, 2022",
                        style: TextStyle(
                          fontSize: width * 0.04,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                "\$126.20",
                style: TextStyle(
                  fontSize: width * 0.04,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

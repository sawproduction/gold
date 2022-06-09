import 'package:flutter/material.dart';
import 'package:gold/constants/colors.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: filedColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Details'),
        actions: [Icon(Icons.edit)],
      ),
      body: Column(
        children: [
          Container(
            width: width,
            color: Colors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Amount',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  '\$222',
                  style: Theme.of(context).textTheme.headline1,
                )
              ],
            ),
          ),
          Container(
            color: Color(0x67111417).withOpacity(0.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Vendor',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Vendor name',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  'when',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'dd/mm/yy',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  'reason',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Transaction Reason',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: filedColor,
                      borderRadius: BorderRadius.circular(width * 0.03)),
                  child: Row(
                    children: [
                      CircleAvatar(),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            'Email',
                            style: Theme.of(context).textTheme.subtitle1,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

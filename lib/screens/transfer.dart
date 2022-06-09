import 'package:flutter/material.dart';
import 'package:gold/constants/colors.dart';

class TransferFunds extends StatelessWidget {
  const TransferFunds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transfer Funds',
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .merge(TextStyle(color: filedColor)),
                  ),
                  CircleAvatar(
                    backgroundColor: filedColor,
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Colors.white, filedColor])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
              SizedBox(
                height: height * 0.02,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(filedColor)),
                  onPressed: () {},
                  child: Text('Change Acount',
                      style: Theme.of(context).textTheme.subtitle1)),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                color: filedColor,
                child: DropdownButton(
                    focusColor: filedColor,
                    dropdownColor: filedColor,
                    isExpanded: true,
                    value: '1',
                    items: [DropdownMenuItem(value: '1', child: Text('1'))],
                    onChanged: (newValue) {}),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: '\$ amount',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: filedColor))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('your new account balance is'), Text('\$3333')],
              ),
              Spacer(),
              ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                          horizontal: width * 0.2, vertical: height * 0.02)),
                      backgroundColor: MaterialStateProperty.all(filedColor)),
                  onPressed: () {},
                  child: Text('Send Transfer',
                      style: Theme.of(context).textTheme.subtitle1)),
              Text(
                'Tap above to complete',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: height * 0.05,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gold/constants/colors.dart';

class RequestFunds extends StatelessWidget {
  const RequestFunds({Key? key}) : super(key: key);

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
                    'Request Funds',
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
              SizedBox(
                height: height * 0 / 02,
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
              SizedBox(
                height: height * 0.02,
              ),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: filedColor))),
              ),
              Spacer(),
              ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                          horizontal: width * 0.2, vertical: height * 0.02)),
                      backgroundColor: MaterialStateProperty.all(filedColor)),
                  onPressed: () {},
                  child: Text('Request Funds',
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

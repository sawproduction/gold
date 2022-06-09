import 'package:flutter/material.dart';
import 'package:gold/constants/colors.dart';
import 'package:gold/constants/images.dart';

class Gold extends StatefulWidget {
  const Gold({Key? key}) : super(key: key);

  @override
  State<Gold> createState() => _GoldState();
}

class _GoldState extends State<Gold> {
  List measures = ['Grains', 'Grams', 'Ounces(Troy)'];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          DropdownButton(
              isExpanded: true,
              value: 'Gold',
              items: [
                DropdownMenuItem(
                    value: 'Gold',
                    child: Text(
                      'Gold',
                      style: TextStyle(color: Colors.black),
                    ))
              ],
              onChanged: (newValue) {}),
          SizedBox(
            height: height * 0.06,
            width: width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: measures.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(
                        backgroundColor: Color(0xff651509B1),
                        label: Text(measures[index]),
                      ),
                    )),
          ),
          Row(
            children: [
              Column(
                children: [
                  Checkbox(value: true, onChanged: (newValue) {}),
                  Checkbox(value: true, onChanged: (newValue) {}),
                  Checkbox(value: true, onChanged: (newValue) {}),
                  Checkbox(value: true, onChanged: (newValue) {})
                ],
              ),
              Image.asset(logo)
            ],
          ),
          Image.asset(keypad),
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                      horizontal: width * 0.2, vertical: height * 0.02)),
                  backgroundColor: MaterialStateProperty.all(filedColor)),
              onPressed: () {},
              child: Text('Confirm',
                  style: Theme.of(context).textTheme.subtitle1)),
        ],
      )),
    );
  }
}

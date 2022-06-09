import 'package:flutter/material.dart';
import 'package:gold/constants/colors.dart';
import 'package:gold/constants/images.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1A1F24),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        title: Text(
          'Forgot Password',
          style: TextStyle(
              color: Color(0xff80afb109), fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Color(0xff606668),
            image: DecorationImage(
                fit: BoxFit.fitWidth, image: AssetImage(forgot))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.02, vertical: height * 0.02),
              child: Expanded(
                  child: Text(
                'Enter the email associated with your account and we will send you a verification code.',
                style: TextStyle(fontWeight: FontWeight.w600),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0x80000000),
                    hintText: 'Email Address',
                    hintStyle: TextStyle(color: filedColor)),
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                    backgroundColor: MaterialStateProperty.all(filedColor)),
                onPressed: () {},
                child: Text(
                  'Send Reset Link',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}

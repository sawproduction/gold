import 'package:flutter/material.dart';
import 'package:gold/constants/colors.dart';
import 'package:gold/constants/images.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          'Edit Profile',
          style: TextStyle(fontFamily: 'Lexand Deca', color: filedColor),
        ),
      ),
      body: Container(
        height: height,
        decoration: BoxDecoration(
            image:
                DecorationImage(fit: BoxFit.fill, image: AssetImage(depbox))),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              CircleAvatar(
                radius: width * 0.1,
                backgroundColor: Colors.black,
                child: Image.network(
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/finance-app-sample-kugwu4/assets/ijvuhvqbvns6/uiAvatar@2x.png'),
              ),
              Text(
                'Upload a Photo for us to easily identify you',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xff66000000).withOpacity(0.4),
                      hintText: 'Your Name',
                      hintStyle: TextStyle(color: filedColor)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xff66000000).withOpacity(0.4),
                      hintText: 'Your Age',
                      hintStyle: TextStyle(color: filedColor)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xff66000000).withOpacity(0.4),
                      hintText: 'Your Title',
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
                    'Edit Profile',
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                      backgroundColor: MaterialStateProperty.all(filedColor)),
                  onPressed: () {},
                  child: Text(
                    'Skip',
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

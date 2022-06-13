import 'package:flutter/material.dart';
import 'package:gold/constants/colors.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [filedColor, Colors.white])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100000),
                        child: Image.network(
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                            'https://picsum.photos/id/237/200/300'),
                      ),
                      Icon(Icons.exit_to_app)
                    ],
                  ),
                  Text(
                    'John Doe',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(
                    'title email',
                    style: Theme.of(context).textTheme.subtitle2,
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'My account',
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.pushNamed(context, '/change-password');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: width,
                  decoration: BoxDecoration(
                      color: filedColor,
                      border: Border.all(color: Colors.black)),
                  child: Text('Change Password',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: filedColor,
                    filled: true,
                    hintText: 'Edit Profile',
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder()),
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.pushNamed(context, '/privacy');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: width,
                  decoration: BoxDecoration(
                      color: filedColor,
                      border: Border.all(color: Colors.black)),
                  child: Text('Privacy Policy',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

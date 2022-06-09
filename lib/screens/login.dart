import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gold/constants/colors.dart';
import 'package:gold/constants/images.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List tabs = ['Sign In', 'Sign Up'];

  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                opacity: 0.7,
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1525824236856-8c0a31dfe3be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8d2F0ZXJmYWxsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logo,
              height: 105,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    setState(() {
                      _currentTab = 0;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        tabs[0],
                        style: TextStyle(color: Colors.white),
                      ),
                      _currentTab == 0
                          ? Container(
                              width: 100,
                              height: 5,
                              color: Colors.white,
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    setState(() {
                      _currentTab = 1;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        tabs[1],
                        style: TextStyle(color: Colors.white),
                      ),
                      _currentTab == 1
                          ? Container(
                              width: 100,
                              height: 5,
                              color: Colors.white,
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            _currentTab == 0
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Email Address',
                            hintStyle: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .merge(TextStyle(color: fieldText)),
                            fillColor: filedColor,
                            filled: true,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .merge(TextStyle(color: fieldText)),
                              fillColor: filedColor,
                              filled: true,
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.visibility_off,
                                  color: fieldText,
                                ),
                              )),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        horizontal: width * 0.15)),
                                backgroundColor:
                                    MaterialStateProperty.all(filedColor)),
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            child: Text('Login')),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/forgot');
                            },
                            child: Text(
                              'Forgot Password?',
                              style: Theme.of(context).textTheme.subtitle2,
                            )),
                        Text(
                          'Also Login With:',
                          style: TextStyle(
                              color: filedColor,
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.05),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.07),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  Navigator.pushNamed(context, '/my-card');
                                },
                                child: CircleAvatar(
                                    backgroundColor: filedColor,
                                    child: FaIcon(
                                      FontAwesomeIcons.google,
                                      color: Colors.white,
                                    )),
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, '/transfer-funds');
                                },
                                child: CircleAvatar(
                                  backgroundColor: filedColor,
                                  child: FaIcon(
                                    FontAwesomeIcons.apple,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, '/payment-details');
                                },
                                child: CircleAvatar(
                                  backgroundColor: filedColor,
                                  child: FaIcon(
                                    FontAwesomeIcons.facebook,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, '/transfer-complete');
                                },
                                child: CircleAvatar(
                                  backgroundColor: filedColor,
                                  child: FaIcon(
                                    FontAwesomeIcons.phone,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Email Address',
                            hintStyle: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .merge(TextStyle(color: fieldText)),
                            fillColor: filedColor,
                            filled: true,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .merge(TextStyle(color: fieldText)),
                              fillColor: filedColor,
                              filled: true,
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.visibility_off,
                                  color: fieldText,
                                ),
                              )),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .merge(TextStyle(color: fieldText)),
                              fillColor: filedColor,
                              filled: true,
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.visibility_off,
                                  color: fieldText,
                                ),
                              )),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        horizontal: width * 0.15)),
                                backgroundColor:
                                    MaterialStateProperty.all(filedColor)),
                            onPressed: () {
                              Navigator.pushNamed(context, '/complete-profile');
                            },
                            child: Text('Create Account')),
                        SizedBox(height: height * 0.02),
                        Text('Login With Social Media',
                            style: TextStyle(
                                color: Colors.white, fontSize: width * 0.04)),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.07),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, '/request-funds');
                                },
                                child: const CircleAvatar(
                                    backgroundColor: filedColor,
                                    child: FaIcon(
                                      FontAwesomeIcons.google,
                                      color: Colors.white,
                                    )),
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  Navigator.pushNamed(context, '/edit-profile');
                                },
                                child: CircleAvatar(
                                  backgroundColor: filedColor,
                                  child: FaIcon(
                                    FontAwesomeIcons.apple,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, '/notification-settings');
                                },
                                child: CircleAvatar(
                                  backgroundColor: filedColor,
                                  child: FaIcon(
                                    FontAwesomeIcons.facebook,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  Navigator.pushNamed(context, '/tutorial');
                                },
                                child: CircleAvatar(
                                  backgroundColor: filedColor,
                                  child: FaIcon(
                                    FontAwesomeIcons.phone,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
          ],
        ),
      ),
    ));
  }
}

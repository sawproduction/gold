import 'package:flutter/material.dart';
import 'package:gold/constants/colors.dart';
import 'package:gold/constants/images.dart';
import 'package:video_player/video_player.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late VideoPlayerController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = VideoPlayerController.asset(video);
    controller.addListener(() {});
    controller.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AspectRatio(aspectRatio: 9 / 16, child: VideoPlayer(controller)),
          Spacer(),
          ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(gold)),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                'Login/Signup',
                style: Theme.of(context).textTheme.subtitle1,
              )),
          Spacer(),
        ],
      )),
    );
  }
}

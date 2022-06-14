import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:gold/constants/colors.dart';
import 'package:gold/constants/images.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late BetterPlayerController controller;

  @override
  void initState() {
    controller = BetterPlayerController(
        BetterPlayerConfiguration(
          autoPlay: true,
        ),
        betterPlayerDataSource: BetterPlayerDataSource.network(
            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/gold-99d5va/assets/ym9xwtj58f7x/AC819F4D-54AA-4EAD-B8D3-653BF23469CA.mp4'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AspectRatio(
              aspectRatio: 9 / 16,
              child: BetterPlayer(
                controller: controller,
              )),
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

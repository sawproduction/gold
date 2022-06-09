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
  late BetterPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BetterPlayerDataSource dataSource =
        BetterPlayerDataSource(BetterPlayerDataSourceType.network, video);
    _controller = BetterPlayerController(
        BetterPlayerConfiguration(autoPlay: true, aspectRatio: 9 / 16),
        betterPlayerDataSource: dataSource);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AspectRatio(
              aspectRatio: 9 / 16,
              child: BetterPlayer(controller: _controller)),
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

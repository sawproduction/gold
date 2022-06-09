import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/router.dart' as router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: GoogleFonts.lexendDeca(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 30),
          subtitle1: GoogleFonts.lexendDeca(
              color: Colors.white, fontWeight: FontWeight.w400),
          subtitle2: GoogleFonts.lexendDeca(
              color: Colors.white, fontWeight: FontWeight.w500),
          // bodySmall: GoogleFonts.lexendDeca(
          //     color: Colors.white, fontWeight: FontWeight.w500)
        ),
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: '/onboarding',
      //  home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

import 'package:Covid_19_App/data_source.dart';
import 'package:Covid_19_App/widgets/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Circular',
        primaryColor: primaryBlack,
      ),
      title: "Covid-19",
      home: SplashScreen(),
    );
  }
}

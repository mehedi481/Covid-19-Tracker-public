import 'dart:async';

import 'package:Covid_19_App/HomePage.dart';
import 'package:Covid_19_App/data_source.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), timeEnd);
  }

  void timeEnd() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "assets/logo/logo.png",
                height: 100,
                width: 100,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "COVID-19 TRACKER",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

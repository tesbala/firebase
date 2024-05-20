import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Add a delay to simulate the splash screen duration
    Timer(Duration(seconds: 3), () {
      // Replace the next line with code to navigate to the main screen of your app
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/splash.gif"), fit: BoxFit.cover,),)
    );
  }
}

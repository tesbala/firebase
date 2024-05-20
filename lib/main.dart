import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'ui/authenication/SplashScreen.dart'; // Assuming you have SplashScreen implemented


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'main',
      home:  SplashScreen(),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:stemtech1/login.dart';
import 'package:stemtech1/onboardingscreen1.dart';
import 'package:stemtech1/signup.dart';
import 'package:stemtech1/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Anton-Regular'),
    );
  }
}

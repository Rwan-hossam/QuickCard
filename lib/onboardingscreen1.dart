import 'package:flutter/material.dart';
import 'package:stemtech1/bottomCurvedClippe.dart';
import 'package:stemtech1/login.dart';
import 'package:stemtech1/onboardingscreen2.dart';
import 'package:stemtech1/onboardingscreen3.dart';

class Onboardingscreen1 extends StatefulWidget {
  const Onboardingscreen1({super.key});

  @override
  State<Onboardingscreen1> createState() => _Onboardingscreen1State();
}

class _Onboardingscreen1State extends State<Onboardingscreen1> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: PageController(),
      children: [
        Scaffold(
          body: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipPath(
                  clipper: BottomCurvedClipper(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(50),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/model4.jpg'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    'Welcome to QuickCart',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  child: Text(
                    'Shop your favorite items anytime, anywhere – fast and easy!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
        Onboardingscreen2(),
        Onboardingscreen3(),
        Login(),
      ],
    );
  }
}

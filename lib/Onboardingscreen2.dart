import 'package:flutter/material.dart';
import 'package:stemtech1/bottomCurvedClippe.dart';
import 'package:stemtech1/login.dart';
import 'package:stemtech1/onboardingscreen3.dart';

class Onboardingscreen2 extends StatefulWidget {
  const Onboardingscreen2({super.key});

  @override
  State<Onboardingscreen2> createState() => _Onboardingscreen2State();
}

class _Onboardingscreen2State extends State<Onboardingscreen2> {
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
                        image: AssetImage('assets/model6.jpg'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    'Fast & Secure Checkout',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  child: Text(
                    'Experience smooth and secure payments with just a few taps',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

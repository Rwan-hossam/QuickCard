import 'package:flutter/material.dart';
import 'package:stemtech1/bottomCurvedClippe.dart';
import 'package:stemtech1/login.dart';

class Onboardingscreen3 extends StatefulWidget {
  const Onboardingscreen3({super.key});

  @override
  State<Onboardingscreen3> createState() => _Onboardingscreen3State();
}

class _Onboardingscreen3State extends State<Onboardingscreen3> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: PageController(),
      children: [
        Scaffold(
          body: Center(
            child: Column(
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
                        image: AssetImage('assets/shop.jpg'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    'Track Your Orders',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Text(
                    'Get real-time updates and track your orders from your phone',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
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

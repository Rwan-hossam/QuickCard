import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Us"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: const [
            SizedBox(height: 20),
            Center(
              child: Text(
                "QuickCart",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 145, 87, 22),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "StyleEase is your go-to fashion app designed to make shopping effortless and fun. From elegant dresses to comfy casual wear, we bring everything stylish right to your fingertips. Fast delivery, fair prices, and regular discounts guaranteed.",
              style: TextStyle(fontSize: 16, height: 1.6),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 30),
            Text(
              " Why Choose Us:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 145, 87, 22),
              ),
            ),
            SizedBox(height: 10),
            Text("• Modern, easy-to-use design"),
            Text("• Smart filtering by size, color, price"),
            Text("• Exclusive deals and discounts"),
            Text("• Fast delivery across Egypt and the Arab world"),
            Text("• Dedicated customer support"),
            SizedBox(height: 30),
            Text(
              " App Version: 1.0.0\nLast updated: July 2025",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

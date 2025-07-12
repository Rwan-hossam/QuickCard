import 'package:flutter/material.dart';

class CallUs extends StatefulWidget {
  const CallUs({super.key});

  @override
  State<CallUs> createState() => _CallUsState();
}

class _CallUsState extends State<CallUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Call Us'))),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: const [
            SizedBox(height: 20),
            Text(
              "📞 Need help or have a question?\nWe'd love to hear from you!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text(" Email: support@QuickCart.com"),
            Text(" Phone: +20 100 123 4567"),
            Text(" Address: Cairo, Egypt"),
            Text(" Website: www.QuickCart.com"),
            SizedBox(height: 30),
            Text("Follow us on:"),
            Text(" Facebook: facebook.com/QuickCart"),
            Text(" Instagram: instagram.com/QuickCart"),
          ],
        ),
      ),
    );
  }
}

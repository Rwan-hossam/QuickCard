import 'package:flutter/material.dart';
import 'package:stemtech1/homePage.dart';

class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  bool pass1 = false;
  bool pass2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 78, 9),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 60),
            child: Center(
              child: Text('SignUp', style: TextStyle(fontSize: 20)),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              fillColor: const Color.fromARGB(255, 249, 236, 236),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: 'First Name',
              hintStyle: TextStyle(
                color: const Color.fromARGB(161, 77, 76, 76),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: TextField(
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 249, 236, 236),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Second Name',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(161, 77, 76, 76),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: TextField(
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 249, 236, 236),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'email',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(161, 77, 76, 76),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: TextField(
              controller: t1,
              obscureText: pass1,
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 249, 236, 236),
                filled: true,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      pass1 = !pass1;
                    });
                  },
                  icon: Icon(Icons.visibility),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(161, 77, 76, 76),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: TextField(
              controller: t2,
              obscureText: pass2,
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 249, 236, 236),
                filled: true,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      pass2 = !pass2;
                    });
                  },
                  icon: Icon(Icons.visibility),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Confirm Password',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(161, 77, 76, 76),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, right: 120, left: 120),
            child: ElevatedButton(
              onPressed: () {
                if (t1.text == t2.text &&
                    t1.text.isNotEmpty &&
                    t2.text.isNotEmpty) {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  });
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Confirm Your Password')),
                  );
                }
              },
              child: Text('Login', style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}

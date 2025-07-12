import 'package:flutter/material.dart';
import 'package:stemtech1/homePage.dart';
import 'package:stemtech1/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hidePassword = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/model3.jpg'),
              opacity: 0.3,
            ),
          ),

          child: Center(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 420),
                  child: TextFormField(
                    controller: email,

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 254, 254, 254),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(83, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                TextFormField(
                  controller: password,
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      icon: Icon(Icons.visibility),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 254, 254, 254),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(83, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                MaterialButton(
                  onPressed: () {
                    if (email.text.isEmpty || !email.text.contains('@')) {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text('Invalaid Email')));
                    } else if (password.text.isEmpty ||
                        password.text.length < 6) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Invalaid password')),
                      );
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                    }
                  },
                  child: Text('Login'),
                ),
                SizedBox(height: 10),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    });
                  },
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: file_names, avoid_print, camel_case_types, duplicate_ignore, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:focusio/views/Pages/Home_Page.dart';
import 'package:focusio/views/Pages/Signup.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _username = TextEditingController();

  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var phoneHeight = MediaQuery.of(context).size.height;
    var phoneWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Scaffold(
        // backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                width: 400,
                height: 400,
                'assets/images/login_image.gif',
                fit: BoxFit.contain,
              ),
              Text(
                "Welcome to Focusio",
                style: GoogleFonts.aBeeZee(fontSize: 23),
              ),
              const SizedBox(
                height: 30,
              ),
              // email id
              login_field(
                controller: _username,
                hint_text: "Enter Your Email",
                obscuretext: false,
              ),
              const SizedBox(
                height: 15,
              ),
              //  password
              login_field(
                controller: _password,
                hint_text: "Enter Password",
                obscuretext: true,
              ),

              // forget password line
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Passoword ?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // login button
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: _username.text, password: _password.text)
                        .then(
                          (value) => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          ),
                        )
                        .onError(
                            (error, stackTrace) => print("$error".toString()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, elevation: 7
                      // fixedSize: const Size(340, 50),
                      ),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, elevation: 7
                      // fixedSize: const Size(340, 50),
                      ),
                  child: const Text(
                    "Create Account",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              // divider line
              const SizedBox(
                height: 50,
              ),

              const Row(
                children: [
                  Flexible(
                    child: Divider(
                      thickness: 0.9,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text("OR"),
                  Flexible(
                    child: Divider(
                      thickness: 0.9,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/google_img.png',
                        height: 40,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/facebook_img.png',
                        height: 40,
                      ),
                    ),
                  ),
                ],
              ),

              //  sign in with other apps
            ],
          ),
        ),
      ),
    );
  }
}

// Login Field

class login_field extends StatelessWidget {
  final controller;
  final String hint_text;
  final bool obscuretext;

  const login_field({
    super.key,
    this.controller,
    required this.hint_text,
    required this.obscuretext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hint_text,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade700),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
        ),
        obscureText: obscuretext,
      ),
    );
  }
}

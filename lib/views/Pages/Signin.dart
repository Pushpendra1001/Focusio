// ignore_for_file: file_names, avoid_print, camel_case_types, duplicate_ignore, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:focusio/views/Pages/Home_Page.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class loginPage extends StatelessWidget {
  loginPage({super.key});

  final _username = TextEditingController();
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var phoneSize = MediaQuery.of(context);
    return Center(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //  login icon
              SizedBox(
                height: phoneSize.size.width < 400 ? 300 : 450,
                child: Image.asset(
                  'assets/images/login_image.gif',
                  fit: BoxFit.contain,
                ),
              ),
              // const SizedBox(
              //   height: 30,
              // ),
              //  text message
              Text(
                "Welcome Back",
                style: GoogleFonts.aBeeZee(fontSize: 23),
              ),
              const SizedBox(
                height: 30,
              ),
              // email id
              login_field(
                controller: _username,
                hint_text: "Enter Username",
                labelText: "Username",
                obscuretext: false,
              ),
              const SizedBox(
                height: 15,
              ),
              //  password
              login_field(
                controller: _password,
                hint_text: "Enter Password",
                labelText: "Password",
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
              ElevatedButton(
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
                  backgroundColor: Colors.black,
                  fixedSize: const Size(340, 50),
                ),
                child: const Text("Sign in"),
              ),
              // divider line
              const SizedBox(
                height: 50,
              ),
              // Divider(
              //   color: Colors.grey.shade600,
              //   thickness: 0.5,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/google_img.png',
                      height: 56,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/facebook_img.png',
                      height: 56,
                    ),
                  ),
                ],
              ),

              Text(
                "Sign in with other Apps",
                style: GoogleFonts.aBeeZee(),
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
  final String labelText;

  const login_field({
    super.key,
    this.controller,
    required this.hint_text,
    required this.labelText,
    required this.obscuretext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hint_text,
          labelText: labelText,
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

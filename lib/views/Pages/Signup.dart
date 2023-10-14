import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:focusio/views/Pages/Home_Page.dart';

import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _username = TextEditingController();

  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
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
                "Welcome to Our Family",
                style: GoogleFonts.aBeeZee(fontSize: 23),
              ),
              const SizedBox(
                height: 30,
              ),
              login_field(
                controller: _username,
                hint_text: "What's Your Name ",
                obscuretext: false,
                SendButton: false,
              ),
              const SizedBox(
                height: 15,
              ),
              login_field(
                controller: _password,
                hint_text: "Enter Your Email",
                obscuretext: true,
                SendButton: false,
              ),
              const SizedBox(
                height: 15,
              ),
              login_field(
                controller: _password,
                hint_text: "Create Your Password",
                obscuretext: true,
                SendButton: false,
              ),
              const SizedBox(
                height: 15,
              ),
              login_field(
                controller: _password,
                hint_text: "OTP",
                obscuretext: true,
                SendButton: true,
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, elevation: 7),
                  child: const Text(
                    "Create Account",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class login_field extends StatelessWidget {
  final controller;
  final String hint_text;
  final bool obscuretext;
  final bool SendButton;

  const login_field(
      {super.key,
      this.controller,
      required this.hint_text,
      required this.obscuretext,
      required this.SendButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(),
          border: const OutlineInputBorder(),
          suffixIcon: SendButton == true
              ? const Icon(Icons.send_rounded)
              : const SizedBox(),
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

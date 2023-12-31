// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:focusio/views/widgets/Colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  Widget profile_option(String optionName, iconName) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 10),
      child: InkWell(
        // ignore: avoid_print
        onTap: () => print("Hi"),
        child: SizedBox(
          height: 50,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                iconName,
                size: 30,
                color: const Color(0xff4fd6d9),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(optionName,
                  style:
                      const TextStyle(color: Color(0xff70808d), fontSize: 20)),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_rounded,
                size: 30,
                color: tealLevel3,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // backgroundColor: Color(0xff53585b),
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff4fd6d9)),
                  borderRadius: const BorderRadius.all(Radius.circular(100))),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/MyImg.jpeg'),
                radius: 70,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              child: Text(
                "Pushpendra Baswal",
                style: GoogleFonts.aBeeZee(
                    fontSize: 20, color: const Color(0xff4fd6d9)),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // Text(
            //   "Computer Science student",
            //   style: GoogleFonts.aBeeZee(
            //       fontSize: 20,
            //       letterSpacing: -2,
            //       color: const Color(0xff70808d)),
            // ),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Video Watch:",
                        style:
                            TextStyle(color: Color(0xff4fd6d9), fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "23",
                        style: TextStyle(color: Color(0xff70808d)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Average Time:",
                        style:
                            TextStyle(color: Color(0xff4fd6d9), fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("4 Min", style: TextStyle(color: Color(0xff70808d)))
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Area",
                        style:
                            TextStyle(color: Color(0xff4fd6d9), fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Technology",
                          style: TextStyle(color: Color(0xff70808d)))
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                profile_option("Personal information", Icons.home),
                profile_option("History", Icons.pie_chart),
                profile_option("ChatBot", Icons.payment),
                profile_option("Settings", Icons.settings),
                InkWell(
                    onTap: () {}, child: profile_option("Logout", Icons.logout))
              ],
            )
          ],
        ),
      ),
    ));
  }
}

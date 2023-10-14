import 'dart:math';

import 'package:flutter/material.dart';
import 'package:focusio/views/widgets/Colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List Images = [
    "assets/images/demo_Image.png",
    "assets/images/demo_Image2.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  child: Text(
                    "Focusio",
                    style: GoogleFonts.aboreto(fontSize: 40),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "What You Want to learn ?",
                    suffixIcon: Icon(Icons.search),
                    focusColor: Colors.black,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Popular on Internet",
                    style: GoogleFonts.aboreto(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      child: SizedBox(
                        height: 250,
                        child: Image.asset(Images[index]),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35), color: darkLevel1),
            child: const GNav(
                gap: 8,
                activeColor: Colors.white,
                tabBackgroundColor: darkLevel1,
                tabs: [
                  GButton(
                    icon: Icons.home,
                    iconColor: tealColor,
                    text: "Home",
                  ),
                  GButton(
                    icon: Icons.search,
                    iconColor: tealColor,
                    text: "Search",
                  ),
                  GButton(
                    icon: Icons.video_library,
                    iconColor: tealColor,
                    text: "Youtube",
                  ),
                  GButton(
                    icon: Icons.person,
                    iconColor: tealColor,
                    text: "Profile",
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

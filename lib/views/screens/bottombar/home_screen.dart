import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List Images = [
    "assets/images/demo_Image.png",
    "assets/images/demo_Image2.png",
    "assets/images/demo_Image.png",
    "assets/images/demo_Image2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: Padding(
                //     padding:
                //         const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                //     child: Text(
                //       "Focusio",
                //       style: GoogleFonts.aboreto(fontSize: 40),
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
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
                SizedBox(
                  height: 430,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 0,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          Images[index],
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Trending Technology",
                      style: GoogleFonts.aboreto(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Image.asset('assets/images/demo_Image.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Image.asset('assets/images/demo_Image2.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

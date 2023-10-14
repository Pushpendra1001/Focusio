import 'package:flutter/material.dart';
import 'package:focusio/views/widgets/Colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class bottombar extends StatelessWidget {
  const bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                // color: Color(0xAA6213ff),
                // color: const Color(0xff0E2728),
                color: darkLevel1),
            child: const GNav(

                // tabBorderRadius: 50,
                gap: 8,

                // backgroundColor: Color(0xAA6213ff),
                // color: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: Color(0xff0E2728),
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: "Home",
                  ),
                  GButton(
                    icon: Icons.search,
                    text: "Search",
                  ),
                  GButton(
                    icon: Icons.post_add,
                    text: "Post",
                  ),
                  GButton(
                    icon: Icons.person,
                    text: "Profile",
                  ),
                  // 0xff3AF1C3
                  // 0xff167A6B
                  // 0xff082E31
                  // 0xff0E2728
                ]),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:focusio/views/Pages/Home_Page.dart';
import 'package:focusio/views/Pages/Youtube_Page.dart';
import 'package:focusio/views/screens/bottombar/StudyPtScreen.dart';
import 'package:focusio/views/screens/bottombar/analytics.dart';
import 'package:focusio/views/widgets/Colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int _selectedIndex = 0;

  final List _widgetOptions = const [
    HomePage(),
    YoutubePage(),
    StudyPtScreen(),
    AnalyticsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
          gap: 8,
          activeColor: Colors.white,
          tabBackgroundColor: darkLevel1,

          tabs: const [
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
          ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
        },
      ),
    );
  }
}

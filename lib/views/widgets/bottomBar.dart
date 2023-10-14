import 'package:flutter/material.dart';
import 'package:focusio/views/screens/bottombar/home_screen.dart';
import 'package:focusio/views/screens/bottombar/studypt_screen.dart';
import 'package:focusio/views/screens/bottombar/youtube_screen.dart';
import 'package:focusio/views/screens/bottombar/analytics.dart';
import 'package:focusio/views/widgets/Colors.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({super.key});

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = const <Widget>[
    HomeScreen(),
    YoutubeScreen(),
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
          backgroundColor: Colors.pink.shade50,
          tabs: const [
            GButton(
              icon: Icons.home,
              iconColor: tealColor,
              text: "Home",
            ),
            GButton(
              icon: Icons.video_library,
              iconColor: tealColor,
              text: "Youtube",
            ),
            GButton(
              icon: Icons.computer,
              iconColor: tealColor,
              text: "StudyPT",
            ),
            GButton(
              icon: Icons.analytics,
              iconColor: tealColor,
              text: "Analytics",
            ),
          ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}

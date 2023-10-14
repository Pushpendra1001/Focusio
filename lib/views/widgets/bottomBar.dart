import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:focusio/views/screens/bottombar/home_screen.dart';
import 'package:focusio/views/screens/bottombar/studypt_screen.dart';
import 'package:focusio/views/screens/bottombar/youtube_screen.dart';
import 'package:focusio/views/screens/bottombar/analytics.dart';
import 'package:focusio/views/screens/users/Signin.dart';
import 'package:focusio/views/widgets/Colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:toast/toast.dart';

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

  final FirebaseAuth auth = FirebaseAuth.instance;
  signOut() async {
    await auth.signOut();
  }
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

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Focusio",
          style: GoogleFonts.aboreto(fontSize: 40),
        ),
        actions: [
          PopupMenuButton(itemBuilder: (context){
            return [
              const PopupMenuItem(
                value: 0,
                child: Text('LOGOUT'),
              )
            ];
          },
            onSelected: (value){
              if(value == 0) {
                signOut();
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => const SignInScreen()));
                Toast.show('Logged Out Successfully');
              }
            },
          )
        ],
      ),
    );
  }
}

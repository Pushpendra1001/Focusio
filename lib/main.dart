import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:focusio/views/Pages/Home_Page.dart';
import 'package:focusio/views/Pages/Signin.dart';
import 'package:focusio/views/Pages/Signup.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
      ),
      debugShowCheckedModeBanner: false,
      home: const SignIn(),
    );
  }
}

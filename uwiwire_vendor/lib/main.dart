import 'package:flutter/material.dart';
// import 'package:uwiwire_vendor/oop/_account_info.dart';
import 'package:uwiwire_vendor/screens/home/home_screen.dart';
// import 'package:uwiwire_vendor/screens/home/components/login_screen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vendor App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
      ),
      // home: LoginScreen(),
      home: const HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:uwiwire_vendor/screens/home/components/home_screen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

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
      home: const HomeScreen(),
    );
  }
}

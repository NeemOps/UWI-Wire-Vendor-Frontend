import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

import 'package:uwiwire_vendor/screens/home/components/home_screen.dart';
import 'package:uwiwire_vendor/screens/home/components/login/login_screen.dart';

// Authentication Files
import 'package:uwiwire_vendor/oop/authentication/_authentication_controller.dart';
// import 'package:uwiwire_vendor/oop/authentication/_authentication_command.dart';
import 'oop/authentication/_logout_command.dart';
import 'oop/authentication/_login_command.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  // Authentication
  AuthenticationController authenticator = AuthenticationController();
  LoginCommand login = LoginCommand();
  LogoutCommand logout = LogoutCommand();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vendor App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
      ),
      home: LoginScreen(loginCommand: login),
      routes: {
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}

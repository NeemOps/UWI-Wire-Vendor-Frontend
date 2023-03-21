import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:uwiwire_vendor/screens/home/components/login/login_screen.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();

  Future<void> login() async {
    String email = LoginScreen.usernameController.text;
    String password = LoginScreen.passwordController.text;

    const uri =
        'https://neemops-uwiwirebackend-hmhcdhw9sw1.ws-us90.gitpod.io/api/v1/auth/users';

    debugPrint(email);
    debugPrint(password);

    final response = await http.post(
      Uri.parse(uri),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({"email": email, "password": password}),
    );
    debugPrint('$response.statusCode');
    if (response.statusCode == 200) {
      debugPrint('We outside');
    } //
    else {
      debugPrint('Try Again');
    }
  }

  void logout() {
    // ignore: avoid_debugPrint
    debugPrint('Pussy');
  }
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

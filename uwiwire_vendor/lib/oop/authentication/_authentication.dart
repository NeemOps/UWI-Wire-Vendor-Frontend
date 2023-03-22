import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:uwiwire_vendor/screens/home/components/login_screen.dart';

class Authentication {
  // Login
  Future<bool> login() async {
    String email = LoginScreen.getUsername();
    String password = LoginScreen.getPassword();

    const uri =
        'https://8080-neemops-uwiwirebackend-hmhcdhw9sw1.ws-us91.gitpod.io/api/v1/auth/users';

    debugPrint(email);
    debugPrint(password);

    final response = await http.post(
      Uri.parse(uri),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({"email": email, "password": password}),
    );

    if (response.statusCode == 200) {
      var token = json.decode(response.body)['access_token'];
      debugPrint(token);

      return true;
    } //
    else {
      return false;
    }
  }

  void logout() {
    // ignore: avoid_debugPrint
    debugPrint('Bye');
  }
}

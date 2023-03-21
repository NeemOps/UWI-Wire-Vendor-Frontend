import 'package:flutter/material.dart';
import 'package:uwiwire_vendor/constants.dart';

import '../../../../oop/authentication/_login_command.dart';
import 'login_button.dart';
import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  LoginCommand loginCommand;

  LoginScreen({super.key, required this.loginCommand});
  static final TextEditingController usernameController =
      TextEditingController();

  static final TextEditingController passwordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'UWI Wire',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Space
                const SizedBox(height: 50),

                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                // Space
                const SizedBox(height: 15),

                // Username Box
                LoginForm(
                  controller: usernameController,
                  text: 'Username',
                  textInputType: TextInputType.emailAddress,
                  obscure: false,
                ),

                // Space
                const SizedBox(height: 7),

                // Password Box
                LoginForm(
                  controller: passwordController,
                  text: 'Password',
                  textInputType: TextInputType.text,
                  obscure: true,
                ),

                // Space
                const SizedBox(height: 7),

                // Log In Button
                LoginButton(loginCommand: loginCommand),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

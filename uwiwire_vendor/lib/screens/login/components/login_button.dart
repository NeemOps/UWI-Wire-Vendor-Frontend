import 'package:flutter/material.dart';

// Authentication
import '../../../backend/authentication/_authentication_controller.dart';
import '../../../backend/authentication/_login_command.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  final AuthenticationController _authController = AuthenticationController();

  LoginCommand loginCommand = LoginCommand();

  late String? accessToken;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // When Pressed
      onTap: () async {
        _authController.setCommand(loginCommand);

        try {
          accessToken = await _authController.authenticate();
          Navigator.pushNamed(context, '/home');
        } catch (e) {
          print('Error: $e');
        }
      },
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text(
            'Sign In',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

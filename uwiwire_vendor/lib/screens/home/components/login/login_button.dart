import 'package:flutter/material.dart';
import '../../../../oop/authentication/_login_command.dart';

// ignore: must_be_immutable
class LoginButton extends StatelessWidget {
  LoginCommand loginCommand;

  LoginButton({super.key, required this.loginCommand});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        bool isLoggedIn = await loginCommand.execute();

        if (isLoggedIn) {
          Navigator.pushReplacementNamed(context, '/home');
        }
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Text(
          'Log In',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

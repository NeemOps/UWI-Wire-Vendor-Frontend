import 'package:flutter/material.dart';
import 'package:uwiwire_vendor/oop/_account_info.dart';

// Authentication
import '../../../oop/authentication/_authentication_controller.dart';
import '../../../oop/authentication/_login_command.dart';

// ignore: must_be_immutable
class LoginButton extends StatelessWidget {
  final AuthenticationController _authController = AuthenticationController();
  LoginCommand loginCommand = LoginCommand();

  LoginButton({super.key});

  late String? accessToken;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // When Pressed
      onTap: () async {
        _authController.setCommand(loginCommand);
        accessToken = await _authController.authenticate();

        if (accessToken == null) {
          const Text('Login unsuccessful');
        } else {
          Navigator.pushNamed(context, '/home');

          AccountInfo accountInfo = AccountInfo();
          accountInfo.getAccountInfo(accessToken!);
          debugPrint(accountInfo.getName());
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
              // fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

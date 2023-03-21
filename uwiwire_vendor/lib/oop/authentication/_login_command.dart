import 'package:uwiwire_vendor/oop/authentication/_authentication_command.dart';

import '_authentication.dart';

class LoginCommand implements AuthenticationCommand {
  late Authentication authInstance;

  LoginCommand() {
    authInstance = const Authentication();
  }

  @override
  void execute() {
    authInstance.login();
  }
}

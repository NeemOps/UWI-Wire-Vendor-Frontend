import 'package:uwiwire_vendor/oop/authentication/_authentication_command.dart';

import '_authentication.dart';

class LoginCommand implements AuthenticationCommand {
  late Authentication authInstance;

  LoginCommand() {
    authInstance = Authentication();
  }

  @override
  Future<bool> execute() async {
    return await authInstance.login();
  }
}

import 'package:uwiwire_vendor/oop/authentication/_authentication_command.dart';

import '_authentication.dart';

class LogoutCommand implements AuthenticationCommand {
  late Authentication authInstance;

  LogoutCommand() {
    authInstance = Authentication();
  }

  @override
  void execute() {
    authInstance.logout();
  }
}

import '_authentication_command.dart';

class AuthenticationController {
  late AuthenticationCommand command;

  void setCommand(AuthenticationCommand command) {
    this.command = command;
  }

  void pressButton() {
    command.execute();
  }
}

import 'package:http/http.dart' as http;
import 'dart:convert';

class AccountInfo {
  static late final String fName;
  static late final String lName;
  static late final String email;
  static late final dynamic walletAddr;

  Future<void> getAccountInfo(String accessToken) async {
    const uri = 'https://uwi-wire.herokuapp.com/api/v1/users/me';

    final response = await http.get(
      Uri.parse(uri),
      headers: {'Authorization': 'Bearer $accessToken'},
    );

    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);

      fName = decoded['fname'];
      print(fName);
      lName = decoded['lname'];
      print(lName);
      email = decoded['email'];
      print(email);
      walletAddr = decoded['walletAddr'];
      print(walletAddr);
    } else {
      throw Exception('Failed to load account information');
    }
  }

  String getName() {
    return '$fName $lName';
  }

  String getEmail() {
    return email;
  }

  dynamic getWalletAddress() {
    return walletAddr;
  }
}

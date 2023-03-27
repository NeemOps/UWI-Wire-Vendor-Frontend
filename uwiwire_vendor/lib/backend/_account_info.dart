import 'package:http/http.dart' as http;
import 'dart:convert';

class AccountInfo {
  static String fName = '';
  static String lName = '';
  static String email = '';
  static dynamic balance = 0;
  static dynamic walletAddr = 0;

  Future<void> getAccountInfo(String accessToken) async {
    const uri = 'https://uwi-wire.herokuapp.com/api/v1/user/identify';

    final response = await http.get(
      Uri.parse(uri),
      headers: {'Authorization': 'Bearer $accessToken'},
    );

    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);

      fName = decoded['fname'];
      lName = decoded['lname'];
      email = decoded['email'];

      walletAddr = decoded['walletAddr'];
      balance = decoded['balance'];
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

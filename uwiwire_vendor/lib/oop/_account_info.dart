import 'package:http/http.dart' as http;
import 'dart:convert';

class AccountInfo {
  static late final String fName;
  static late final String lName;
  static late final String email;
  static late final String walletAddr;
  // late final int balance;

  Future<Map<String, dynamic>> getAccountInfo(String accessToken) async {
    const uri = 'https://uwi-wire.herokuapp.com/api/v1/users';

    final response = await http.get(
      Uri.parse(uri),
      headers: {'Authorization': 'Bearer $accessToken'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      fName = data['fname'];
      return data;
    } else {
      throw Exception('Failed to load account information');
    }
  }

  String getName() {
    return fName;
  }

  // factory AccountInfo.fromJson(Map<String, dynamic> json) {
  //   return AccountInfo(
  //     fName: json['fname'],
  //     lName: json['lname'],
  //     email: json['email'],
  //     blockchainAddr: json['walletAddr'],
  //     balance: json['balance'],
  //   );
  // }

  // int getBalance() {
  //   return balance;
  // }
}

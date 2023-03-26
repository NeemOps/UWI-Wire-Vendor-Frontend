import 'package:flutter/material.dart';
import 'package:uwiwire_vendor/backend/authentication/_authentication.dart';

import '../../../backend/_account_info.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({
    super.key,
  });

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final Authentication _authInstance = Authentication();
  final AccountInfo _accountInfo = AccountInfo();

  late String _accessToken;

  Future<void> printAccountInfo() async {
    setState(() {
      _accessToken = _authInstance.getAccessToken();
    });

    try {
      // Call the getAccountInfo method to fetch the account information
      await _accountInfo.getAccountInfo(_accessToken);

      // Print the account information
      print('Name: ${_accountInfo.getName()}');
      print('Email: ${_accountInfo.getEmail()}');
      print('Wallet Address: ${_accountInfo.getWalletAddress()}');
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    printAccountInfo();
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: 120,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Icon(Icons.person_2),
            ),
          ),

          // Vendor Name and Email
          const Text('Vendor Name'),
          const Text('johnDoe@gmail.com'),
        ],
      ),
      // child: Text(_accessToken),
    );
  }
}

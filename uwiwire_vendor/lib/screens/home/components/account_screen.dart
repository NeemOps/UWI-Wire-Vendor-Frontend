import 'package:flutter/material.dart';

import '../../../backend/_account_info.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({
    super.key,
  });

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final AccountInfo _accountInfo = AccountInfo();

  @override
  Widget build(BuildContext context) {
    // _getAccountInfo();
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
          Text(_accountInfo.getName()),
          Text(_accountInfo.getEmail()),
        ],
      ),
    );
  }
}

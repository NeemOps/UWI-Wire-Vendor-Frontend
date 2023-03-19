import 'package:flutter/material.dart';
import 'header_with_balance.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // Total width and height of screen
    Size size = MediaQuery.of(context).size;

    // SingleChildScrollView: Enables scrolling on smaller devices
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithBalance(size: size),
          Container(
            height: 24,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

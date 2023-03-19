import 'package:flutter/material.dart';
import 'package:uwiwire_vendor/constants.dart';

import 'body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Total width and height of screen
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.only(
            left: kDefaultPadding * 2,
            right: kDefaultPadding * 2,
          ),
          height: size.height * 0.1,
          decoration: const BoxDecoration(
            color: kGrey,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Text('Home'),
              Text('Bill'),
              Text('Account'),
            ],
          )),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: const Text('Hamburger'),
      actions: const <Widget>[
        Text('UWI WIRE'),
      ],
    );
  }
}

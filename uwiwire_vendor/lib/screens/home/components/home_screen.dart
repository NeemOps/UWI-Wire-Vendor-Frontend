import 'package:flutter/material.dart';
import 'package:uwiwire_vendor/constants.dart';

import 'body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.only(
            left: kDefaultPadding * 2,
            right: kDefaultPadding * 2,
          ),
          height: 80,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 194, 204, 210),
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
    );
  }
}

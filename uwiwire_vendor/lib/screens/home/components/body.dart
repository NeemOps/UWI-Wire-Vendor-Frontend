import 'package:flutter/material.dart';
import 'package:uwiwire_vendor/constants.dart';
import 'header_with_balance.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // Total width and height of screen
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        HeaderWithBalance(size: size),
        SizedBox(
          // Container height and width
          height: size.height * 0.6,
          width: size.width,

          child: Stack(
            children: <Widget>[
              // Decoration
              Container(
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 0,
                right: 0,
                child: Container(
                  height: 35,
                  decoration: const BoxDecoration(
                    color: kGrey,
                  ),
                  child: const Text('Latest Transactions'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

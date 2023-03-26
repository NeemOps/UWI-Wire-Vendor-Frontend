import 'package:flutter/material.dart';
import 'package:uwiwire_vendor/constants.dart';

import 'components/account_screen.dart';
import 'menu.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _currentIndex = 0;

  final List<Widget> _bodyOptions = <Widget>[
    const Text('Home'),
    const Text('Bills'),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,

      // Sidebar
      drawer: const Menu(),

      // App Bar
      appBar: buildAppBar(),

      // Body
      body: Center(
        child: _bodyOptions.elementAt(_currentIndex),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: buildBottomNav(),
    );
  }

  // AppBar
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.pink,
      actions: const <Widget>[
        Text('UWI WIRE'),
      ],
    );
  }

  // Bottom Navigation Bar
  BottomNavigationBar buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      items: const <BottomNavigationBarItem>[
        // Home Icon
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),

        // Bill Icon
        BottomNavigationBarItem(
          icon: Icon(Icons.qr_code_scanner_outlined),
          label: 'Bill',
        ),

        // Account Icon
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Account',
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}

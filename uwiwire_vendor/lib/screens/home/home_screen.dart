import 'package:flutter/material.dart';
import 'package:uwiwire_vendor/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<Widget> _bodyOptions = <Widget>[
    Text('Home'),
    Text('Bills'),
    Text('Account'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,

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
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
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

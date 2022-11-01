import 'package:flutter/material.dart';

import '../components/dashBoard.dart';
import 'homeScreen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _currentIndex = 0;

  final List<Map<String, dynamic>> _pages = const [
    {'title': 'الرئيسية', 'screen': HomeScreen()},
    {'title': 'التحويلات', 'screen': DashBoard()},
  ];

  void _selectedPage(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: _selectedPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.compare_arrows,
              size: 30,
            ),
            label: 'التحويلات',
          ),
        ],
      ),
    );
  }
}

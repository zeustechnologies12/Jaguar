// bottom_navigation.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../styles/home_style.dart';

class BottomNavigation extends StatefulWidget {
  final int selectedIndex;

  const BottomNavigation({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          context.go('/chat');
          break;
        case 1:
          context.go('/my_bookings');
          break;
        case 2:
          context.go('/home'); // Updated route
          break;
        case 3:
          context.go('/my_account');
          break;
        case 4:
          context.go('/about');
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.chat, color: kIconColor),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book, color: kIconColor),
          label: 'My Bookings',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: kIconColor),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: kIconColor),
          label: 'My Account',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info, color: kIconColor),
          label: 'About',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: kSelectedItemColor,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
    );
  }
}

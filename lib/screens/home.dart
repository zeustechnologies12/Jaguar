import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../styles/home_style.dart';
import 'chat.dart';
import 'my_booking.dart';
import 'home_tab.dart';
import 'my_account.dart';
import 'about.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2; // Set the initial index to the Home tab

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          context.go('/chat'); // Navigate to ChatPage
          break;
        case 1:
          context.go('/my_bookings'); // Navigate to MyBookingsPage
          break;
        case 2:
          context.go('/home'); // Navigate to HomeTabPage (Home)
          break;
        case 3:
          context.go('/my_account'); // Navigate to MyAccountPage
          break;
        case 4:
          context.go('/about'); // Navigate to AboutPage
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getSelectedPage(), // Load the appropriate page based on index
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
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
      ),
    );
  }

  // Method to get the currently selected page
  Widget _getSelectedPage() {
    switch (_selectedIndex) {
      case 0:
        return ChatPage(); // Load ChatPage
      case 1:
        return MyBookingsPage(); // Load MyBookingsPage
      case 2:
        return HomeTabPage(); // Load HomeTabPage (Home)
      case 3:
        return MyAccountPage(); // Load MyAccountPage
      case 4:
        return AboutPage(); // Load AboutPage
      default:
        return HomeTabPage(); // Default to HomeTabPage
    }
  }
}

import 'package:flutter/material.dart';

import '../components/bottom_navigation.dart'; // Import your bottom navigation widget
import '../styles/home_style.dart'; // Import the styling file

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:
          kBackgroundColor, // Use the background color from the style
      body: Center(
        child: Text(
          'Home Page Content Here',
          style: kPageTitleStyle,
        ), // Use the title style from the style
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: 2,
      ), // Use BottomNavigation widget
    );
  }
}

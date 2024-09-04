import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../styles/home_style.dart'; // Import the styling file
import '../components/bottom_navigation.dart'; // Import your bottom navigation widget

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          kBackgroundColor, // Use the background color from the style
      body: Center(
        child: Text('Home Page Content Here',
            style: kPageTitleStyle), // Use the title style from the style
      ),
      bottomNavigationBar:
          BottomNavigation(selectedIndex: 2), // Use BottomNavigation widget
    );
  }
}

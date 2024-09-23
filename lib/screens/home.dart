import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // For navigation (if you're using GoRouter)

import '../components/bottom_navigation.dart'; // Import your bottom navigation widget
import '../styles/home_style.dart'; // Import the styling file

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          kBackgroundColor, // Use the background color from the style
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: const Text('Home', style: kAppBarTitleStyle),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Navigate back to the login page
              context.go('/login'); // Replace this with your login page route
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Home Page Content Here',
          style: kPageTitleStyle,
        ), // Use the title style from the style
      ),
      bottomNavigationBar: const BottomNavigation(
        selectedIndex: 2,
      ), // Use BottomNavigation widget
    );
  }
}

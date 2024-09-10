import 'package:flutter/material.dart';

import '../components/bottom_navigation.dart'; // Import the bottom navigation widget
import '../styles/about_style.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us', style: kAppBarTitleStyle),
        backgroundColor: kAppBarColor,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About the App',
              style: kPageTitleStyle,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Jaguar, your go-to app for booking arenas and venues! We offer a seamless and intuitive platform for finding and reserving spaces for concerts, sports events, theatre shows, and more. Whether you’re an organizer or a participant, Jaguar makes booking easy and efficient.',
              style: kBodyTextStyle,
            ),
            SizedBox(height: 20),
            Text(
              'Contact Us',
              style: kPageTitleStyle,
            ),
            SizedBox(height: 10),
            Text(
              'If you have any questions or need assistance, please reach out to us:',
              style: kBodyTextStyle,
            ),
            SizedBox(height: 10),
            Text(
              'Email: support@jaguarapp.com',
              style: kBodyTextStyle,
            ),
            SizedBox(height: 10),
            Text(
              'Phone: +1 234 567 890',
              style: kBodyTextStyle,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(
          selectedIndex: 4), // Set the index for the About tab
    );
  }
}

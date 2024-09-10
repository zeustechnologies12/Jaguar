import 'package:flutter/material.dart';

import '../components/bottom_navigation.dart'; // Import the bottom navigation widget
import '../styles/my_account_style.dart';

class MyAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Account', style: kAppBarTitleStyle),
        backgroundColor: kAppBarColor,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/profile_picture.png'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Name: John Doe',
              style: kInfoTextStyle,
            ),
            SizedBox(height: 8.0),
            Text(
              'Email: john.doe@example.com',
              style: kInfoTextStyle,
            ),
            SizedBox(height: 8.0),
            Text(
              'Phone: +1 234 567 890',
              style: kInfoTextStyle,
            ),
            SizedBox(height: 8.0),
            Text(
              'Address: 123 Main Street, Springfield, USA',
              style: kInfoTextStyle,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(
          selectedIndex: 3), // Set the index for the My Account tab
    );
  }
}

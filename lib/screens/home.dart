import 'package:flutter/material.dart';
import '/styles/home_style.dart'; // Update with your actual path

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Home Page!',
          style: HomeStyles.titleStyle,
        ),
      ),
    );
  }
}

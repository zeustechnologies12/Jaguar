import 'package:flutter/material.dart';
import '/styles/home_style.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: kAppBarTextStyle),
      ),
      body: Center(
        child: Text('Welcome to the Home Page!', style: kBodyTextStyle),
      ),
    );
  }
}

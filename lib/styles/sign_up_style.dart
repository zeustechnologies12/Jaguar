import 'package:flutter/material.dart';

final TextStyle kAppBarTextStyle = TextStyle(fontSize: 20, color: Colors.white);
final TextStyle kButtonTextStyle = TextStyle(fontSize: 18, color: Colors.white);
final TextStyle kLinkTextStyle = TextStyle(fontSize: 16, color: Colors.blue);
final InputDecoration kInputDecoration = InputDecoration(
  border: OutlineInputBorder(),
  labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
);
final ButtonStyle kButtonStyle = ElevatedButton.styleFrom(
  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
);
final TextStyle kTitleTextStyle = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

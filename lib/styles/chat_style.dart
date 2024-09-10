import 'package:flutter/material.dart';

// AppBar styling
const kAppBarTitleStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const kAppBarColor = Colors.blue;

// Page title styling
const kPageTitleStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

// Chat button styling
final ButtonStyle kChatButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.blue, // Background color
  foregroundColor: Colors.white, // Text color
  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),
  ),
);

const kChatButtonTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.normal,
);

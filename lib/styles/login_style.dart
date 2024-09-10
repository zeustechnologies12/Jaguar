import 'package:flutter/material.dart';

final TextStyle kAppBarTextStyle =
    const TextStyle(fontSize: 20, color: Colors.white);
final TextStyle kButtonTextStyle =
    const TextStyle(fontSize: 18, color: Colors.white);
final TextStyle kLinkTextStyle =
    const TextStyle(fontSize: 16, color: Colors.blue);
final TextStyle kBodyTextStyle =
    const TextStyle(fontSize: 18, color: Colors.black);
final TextStyle kTitleTextStyle = const TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
final InputDecoration kInputDecoration = const InputDecoration(
  border: OutlineInputBorder(),
  labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
);
final ButtonStyle kButtonStyle = ElevatedButton.styleFrom(
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
);
final Color kIconColor = Colors.blueAccent;

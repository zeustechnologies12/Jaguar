import 'package:flutter/material.dart';

const TextStyle kAppBarTextStyle = TextStyle(fontSize: 20, color: Colors.white);
const TextStyle kButtonTextStyle = TextStyle(fontSize: 18, color: Colors.white);
const TextStyle kLinkTextStyle = TextStyle(fontSize: 16, color: Colors.blue);
const InputDecoration kInputDecoration = InputDecoration(
  border: OutlineInputBorder(),
  labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
);
final ButtonStyle kButtonStyle = ElevatedButton.styleFrom(
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
);
const TextStyle kTitleTextStyle = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

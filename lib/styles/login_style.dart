import 'package:flutter/material.dart';

class LoginStyles {
  static const TextStyle titleStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );

  static final InputDecoration textFieldDecoration = InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Email or Username',
  );

  static final InputDecoration passwordFieldDecoration = InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Password',
  );

  static final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(vertical: 15),
    textStyle: TextStyle(fontSize: 18),
  );
}

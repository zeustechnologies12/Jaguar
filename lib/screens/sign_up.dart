import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/styles/sign_up_style.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up', style: kAppBarTextStyle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'JAGUAR',
              style: kTitleTextStyle,
            ),
            SizedBox(height: 20),
            TextField(
              decoration:
                  kInputDecoration.copyWith(labelText: 'Email/Username'),
            ),
            TextField(
              decoration: kInputDecoration.copyWith(labelText: 'Password'),
              obscureText: true,
            ),
            TextField(
              decoration:
                  kInputDecoration.copyWith(labelText: 'Confirm Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/login');
              },
              style: kButtonStyle,
              child: Text('Sign Up', style: kButtonTextStyle),
            ),
            TextButton(
              onPressed: () {
                context.go('/login');
              },
              child:
                  Text('Already have an account? Login', style: kLinkTextStyle),
            ),
          ],
        ),
      ),
    );
  }
}

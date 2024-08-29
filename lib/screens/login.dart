import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/styles/login_style.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login', style: kAppBarTextStyle),
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
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/home');
              },
              style: kButtonStyle,
              child: Text('Login', style: kButtonTextStyle),
            ),
            TextButton(
              onPressed: () {
                context.go('/signup');
              },
              child: Text('Don\'t have an account? Sign up',
                  style: kLinkTextStyle),
            ),
            SizedBox(height: 20),
            Text('Or login with', style: kBodyTextStyle),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.account_circle, color: kIconColor),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.facebook, color: kIconColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '/styles/sign_up_style.dart'; // Update with your actual path

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Create an Account',
                  style: SignUpStyles.titleStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: SignUpStyles.textFieldDecoration,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: SignUpStyles.usernameFieldDecoration,
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: SignUpStyles.passwordFieldDecoration,
                  obscureText: true,
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: SignUpStyles.confirmPasswordFieldDecoration,
                  obscureText: true,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle sign-up logic here

                    // After successful sign-up, navigate back to the login page
                    Navigator.pop(context);
                  },
                  child: Text('Sign Up'),
                  style: SignUpStyles.elevatedButtonStyle,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? '),
                    GestureDetector(
                      onTap: () {
                        // Navigate back to the login page
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

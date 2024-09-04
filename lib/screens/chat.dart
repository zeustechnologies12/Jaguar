// chat.dart
import 'package:flutter/material.dart';
import '../styles/chat_style.dart';
import '../components/bottom_navigation.dart'; // Import the bottom navigation widget

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat', style: kAppBarTitleStyle),
        backgroundColor: kAppBarColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Chat Page', style: kPageTitleStyle),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement chat functionality here
              },
              style: kChatButtonStyle,
              child: Text('Start Chatting', style: kChatButtonTextStyle),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigation(selectedIndex: 0), // Set the index for the Chat tab
    );
  }
}

// chat.dart
import 'package:flutter/material.dart';

import '../components/bottom_navigation.dart'; // Import the bottom navigation widget
import '../styles/chat_style.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat', style: kAppBarTitleStyle),
        backgroundColor: kAppBarColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Chat Page', style: kPageTitleStyle),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement chat functionality here
              },
              style: kChatButtonStyle,
              child: const Text('Start Chatting', style: kChatButtonTextStyle),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(
          selectedIndex: 0), // Set the index for the Chat tab
    );
  }
}

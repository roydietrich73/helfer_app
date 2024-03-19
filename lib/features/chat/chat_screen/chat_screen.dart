import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String userId;
  final String otherUserId;

  ChatScreen({
    Key? key,
    required this.userId,
    required this.otherUserId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with $otherUserId'),
      ),
      body: Center(
        child: Text('Chat Screen for $userId with $otherUserId'),
      ),
    );
  }
}

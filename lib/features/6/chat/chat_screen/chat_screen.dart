import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/bottom_navigation_bar/btn_nav_bar.dart';

class ChatScreen extends StatelessWidget {
  final String userId;
  final String otherUserId;

  const ChatScreen({
    super.key,
    required this.userId,
    required this.otherUserId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const btnNavBar(),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: btnColor2,
        title: const Text('Chat'),
      ),
      body: Center(
        child: Text('Chat Screen for $userId with $otherUserId'),
      ),
    );
  }
}

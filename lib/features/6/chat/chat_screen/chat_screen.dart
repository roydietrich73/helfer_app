import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/btn_nav_bar.dart';

class ChatScreen extends StatelessWidget {
  final String userId;
  final String otherUserId;

  const ChatScreen({
    Key? key,
    required this.userId,
    required this.otherUserId,
  }) : super(key: key);

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

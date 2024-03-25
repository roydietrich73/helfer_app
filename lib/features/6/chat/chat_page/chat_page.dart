import 'package:flutter/material.dart';
import 'package:helfer_app/features/6/chat/chat_bloc/chat_bloc.dart';
import 'package:helfer_app/features/6/chat/chat_model/chat_model.dart';
import 'package:helfer_app/features/6/chat/chat_screen/chat_screen.dart';

class ChatPage extends StatelessWidget {
  final String userId;
  final String otherUserId;

  const ChatPage({Key? key, required this.userId, required this.otherUserId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          ChatBloc()
              .createChat(ChatModel(userId: userId, otherUserId: otherUserId));
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ChatScreen(userId: userId, otherUserId: otherUserId)),
          );
        },
        child: const Text('Chat'),
      ),
    );
  }
}

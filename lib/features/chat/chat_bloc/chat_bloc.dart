import 'package:flutter/material.dart';
import 'package:helfer_app/features/chat/chat_model/chat_model.dart';
import 'package:helfer_app/features/chat/chat_repository/chat_repository.dart';

class ChatBloc with ChangeNotifier {
  final ChatRepository _repository = ChatRepository();

  void createChat(ChatModel chat) {
    _repository.getMessagesStream();
  }
}

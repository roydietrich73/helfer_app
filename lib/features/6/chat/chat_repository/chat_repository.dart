import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:helfer_app/features/6/chat/chat_message/chat_message.dart';

class ChatRepository {
  final CollectionReference<Map<String, dynamic>> _messagesCollection =
      FirebaseFirestore.instance.collection('messages');

  final List<ChatMessage> _messages = [];
  List<ChatMessage> get messages => _messages;

  Stream<List<ChatMessage>> getMessagesStream() {
    return _messagesCollection
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return ChatMessage(
            text: doc['text'],
            timestamp: (doc['timestamp'] as Timestamp).toDate());
      }).toList();
    });
  }

  Future<void> addMessage(String text) async {
    try {
      await _messagesCollection.add({
        'text': text,
        'timestamp': Timestamp.now(),
      });

      // Falls erforderlich, aktualisieren Sie _messages lokal
      _messages.add(ChatMessage(text: text, timestamp: DateTime.now()));
    } catch (error) {
      rethrow;
    }
  }

  void clearMessage() {
    _messages.clear();
  }
}

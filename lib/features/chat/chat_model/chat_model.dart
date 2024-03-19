class ChatModel {
  final String userId;
  final String otherUserId;

  ChatModel({required this.userId, required this.otherUserId});

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'otherUserId': otherUserId,
    };
  }
}

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  final int unreadCount;
  final bool isOnline;

  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.avatarUrl,
    this.unreadCount = 0,
    this.isOnline = false,
  });
}

class MessageModel {
  final String message;
  final String time;
  final bool isSent;
  final bool isDelivered;
  final bool isRead;

  MessageModel({
    required this.message,
    required this.time,
    required this.isSent,
    this.isDelivered = false,
    this.isRead = false,
  });
}

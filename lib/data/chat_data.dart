import '../models/chat_model.dart';

class ChatData {
  static List<ChatModel> getChatList() {
    return [
      ChatModel(
        name: 'Sarah Johnson',
        message: 'Hey! How are you doing today?',
        time: '10:30 AM',
        avatarUrl: 'https://i.pravatar.cc/150?img=1',
        unreadCount: 3,
        isOnline: true,
      ),
      ChatModel(
        name: 'Mike Wilson',
        message: 'Can we meet tomorrow?',
        time: '9:45 AM',
        avatarUrl: 'https://i.pravatar.cc/150?img=12',
        unreadCount: 1,
        isOnline: true,
      ),
      ChatModel(
        name: 'Emma Davis',
        message: 'Thanks for your help! 😊',
        time: '8:20 AM',
        avatarUrl: 'https://i.pravatar.cc/150?img=5',
        unreadCount: 0,
        isOnline: false,
      ),
      ChatModel(
        name: 'John Smith',
        message: 'Perfect! See you then.',
        time: 'Yesterday',
        avatarUrl: 'https://i.pravatar.cc/150?img=13',
        unreadCount: 0,
        isOnline: false,
      ),
      ChatModel(
        name: 'Lisa Anderson',
        message: 'The project looks amazing!',
        time: 'Yesterday',
        avatarUrl: 'https://i.pravatar.cc/150?img=9',
        unreadCount: 5,
        isOnline: true,
      ),
      ChatModel(
        name: 'David Brown',
        message: '👍',
        time: '2 days ago',
        avatarUrl: 'https://i.pravatar.cc/150?img=15',
        unreadCount: 0,
        isOnline: false,
      ),
      ChatModel(
        name: 'Sophie Taylor',
        message: 'Let me know when you\'re free',
        time: '2 days ago',
        avatarUrl: 'https://i.pravatar.cc/150?img=20',
        unreadCount: 2,
        isOnline: true,
      ),
      ChatModel(
        name: 'Alex Martinez',
        message: 'Great work on the presentation!',
        time: '3 days ago',
        avatarUrl: 'https://i.pravatar.cc/150?img=33',
        unreadCount: 0,
        isOnline: false,
      ),
      ChatModel(
        name: 'Rachel Green',
        message: 'Coffee at 5?',
        time: '4 days ago',
        avatarUrl: 'https://i.pravatar.cc/150?img=27',
        unreadCount: 0,
        isOnline: true,
      ),
      ChatModel(
        name: 'Tom Harris',
        message: 'Sounds good 👌',
        time: '5 days ago',
        avatarUrl: 'https://i.pravatar.cc/150?img=52',
        unreadCount: 0,
        isOnline: false,
      ),
    ];
  }

  static List<MessageModel> getSampleMessages() {
    return [
      MessageModel(
        message: 'Hey! How are you?',
        time: '10:30',
        isSent: false,
      ),
      MessageModel(
        message: 'I\'m doing great! Thanks for asking 😊',
        time: '10:31',
        isSent: true,
        isDelivered: true,
        isRead: true,
      ),
      MessageModel(
        message: 'How about you?',
        time: '10:31',
        isSent: true,
        isDelivered: true,
        isRead: true,
      ),
      MessageModel(
        message: 'Pretty good! Just finished a big project',
        time: '10:32',
        isSent: false,
      ),
      MessageModel(
        message: 'That\'s awesome! Congratulations! 🎉',
        time: '10:33',
        isSent: true,
        isDelivered: true,
        isRead: false,
      ),
      MessageModel(
        message: 'Thanks! Want to grab coffee later?',
        time: '10:34',
        isSent: false,
      ),
      MessageModel(
        message: 'Sure! What time works for you?',
        time: '10:35',
        isSent: true,
        isDelivered: true,
        isRead: false,
      ),
      MessageModel(
        message: 'How about 5 PM?',
        time: '10:36',
        isSent: false,
      ),
      MessageModel(
        message: 'Perfect! See you then ☕',
        time: '10:37',
        isSent: true,
        isDelivered: true,
        isRead: false,
      ),
    ];
  }
}

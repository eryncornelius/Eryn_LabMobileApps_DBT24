class User {
  final String username;
  final String profileImage;
  final String? lastMessage;
  final String? time;

  User({required this.username, required this.profileImage, this.lastMessage, this.time});
}

class Message {
  final String text;
  final bool isMe;

  Message({required this.text, required this.isMe});
}
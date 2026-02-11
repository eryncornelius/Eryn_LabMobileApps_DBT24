import '../models/user_model.dart';
import 'package:flutter/material.dart';
import '../screens/chat_screen.dart';

class ChatScreen extends StatelessWidget {
  final List<User> chats = [
    User(username: "Nathan", profileImage: "10", lastMessage: "Seen 4h ago"),
    User(username: "JJ", profileImage: "2", lastMessage: "Seen 30 min ago"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black, title: Text("eryncornelius ⌵")),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, i) => ListTile(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ChatDetailScreen(user: chats[i]))),
          leading: CircleAvatar(backgroundImage: NetworkImage("https://wallpapers.com/images/high/cute-profile-picture-png-oxw-miptiecs380g1l0k.png}")),
          title: Text(chats[i].username, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          subtitle: Text(chats[i].lastMessage!, style: TextStyle(color: Colors.grey)),
          trailing: Icon(Icons.camera_alt_outlined, color: Colors.grey),
        ),
      ),
    );
  }
}
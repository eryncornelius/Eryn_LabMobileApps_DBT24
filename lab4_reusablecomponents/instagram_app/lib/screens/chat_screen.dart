import '../models/user_model.dart';
import 'package:flutter/material.dart';

class ChatDetailScreen extends StatelessWidget {
  final User user;
  ChatDetailScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(radius: 15, backgroundImage: NetworkImage("https://wallpapers.com/images/high/cute-profile-picture-png-oxw-miptiecs380g1l0k.png")),
            SizedBox(width: 10),
            Text(user.username, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(child: _buildMessages()),
          _buildInputBar(),
        ],
      ),
    );
  }

  Widget _buildMessages() {
    return ListView(
      padding: EdgeInsets.all(15),
      children: [
        _bubble("halo! how are you?", false),
        _bubble("im good...", true),
        _bubble("nice", false),
      ],
    );
  }

  Widget _bubble(String text, bool isMe) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isMe ? Color(0xFF7000B1) : Color(0xFF262626),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(text, style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _buildInputBar() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(color: Color(0xFF262626), borderRadius: BorderRadius.circular(30)),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Message...",
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.camera_alt, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
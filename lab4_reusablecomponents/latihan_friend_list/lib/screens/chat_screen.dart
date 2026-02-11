import 'package:flutter/material.dart';
import '../model/user_model.dart';

class ChatScreen extends StatelessWidget {
  final Contact contact;

  const ChatScreen({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(contact.avatarUrl),
              radius: 15,
            ),
            const SizedBox(width: 10),
            Text(contact.name),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildChatBubble("Halo, How are you?", false),
                _buildChatBubble(contact.lastMessage, true),
                _buildChatBubble("Oke.", false),
              ],
            ),
          ),
          _buildInputBar(),
        ],
      ),
    );
  }

  Widget _buildChatBubble(String text, bool isSender) {
    return Align(
      alignment: isSender ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSender ? Colors.grey[300] : Colors.blue[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(text),
      ),
    );
  }

  Widget _buildInputBar() {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.white,
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Type something...",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.send, color: Colors.blue)),
        ],
      ),
    );
  }
}
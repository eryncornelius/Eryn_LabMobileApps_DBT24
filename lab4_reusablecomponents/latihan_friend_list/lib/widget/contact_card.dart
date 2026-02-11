import 'package:flutter/material.dart';
import '../model/user_model.dart';
import '../screens/chat_screen.dart';

class ContactCard extends StatelessWidget {
  final Contact contact;

  const ContactCard({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(contact.avatarUrl),
      ),
      title: Text(contact.name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(contact.lastMessage, maxLines: 1, overflow: TextOverflow.ellipsis),
      trailing: Text(contact.time),
      onTap: () {

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(contact: contact),
          ),
        );
      },
    );
  }
}
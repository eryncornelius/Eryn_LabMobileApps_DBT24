import 'package:flutter/material.dart';
import '../model/user_model.dart';
import '../widget/contact_card.dart';

class FriendsListScreen extends StatelessWidget {
  const FriendsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Good Morning, Eryn!"),
        elevation: 1,
      ),
      body: ListView.separated(
        itemCount: dummyContacts.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          return ContactCard(contact: dummyContacts[index]);
        },
      ),
    );
  }
}
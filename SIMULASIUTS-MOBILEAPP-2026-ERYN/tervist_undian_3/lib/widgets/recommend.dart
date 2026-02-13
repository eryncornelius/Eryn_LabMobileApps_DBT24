import 'package:flutter/material.dart';

class RecommendationSheet extends StatelessWidget {
  const RecommendationSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Where should you put your phone?",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text("Recommended"),
          const SizedBox(height: 10),
          buildItem("Backpack", Colors.green),
          buildItem("In your hand", Colors.green),
          const SizedBox(height: 10),
          const Text("Don't"),
          const SizedBox(height: 10),
          buildItem("Treadmill", Colors.red),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade200,
                foregroundColor: Colors.black,
              ),
              child: const Text("Got it"),
            ),
          )
        ],
      ),
    );
  }

  Widget buildItem(String text, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          CircleAvatar(
            radius: 6,
            backgroundColor: color,
          ),
          const SizedBox(width: 10),
          Text(text, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

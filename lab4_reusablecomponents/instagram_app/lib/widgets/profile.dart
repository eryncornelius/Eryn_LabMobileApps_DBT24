import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String username;
  final String imageUrl;

  PostCard({required this.username, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage("https://wallpapers.com/images/high/smiling-woman-portrait16-percent-9gt21aga7n9hz6od.png")),
          title: Text(username, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          trailing: Icon(Icons.more_vert, color: Colors.white),
        ),
        Image.network(imageUrl, height: 400, width: double.infinity, fit: BoxFit.cover),
        Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Icon(Icons.favorite_border, color: Colors.white),
              SizedBox(width: 16),
              Icon(Icons.chat_bubble_outline, color: Colors.white),
              SizedBox(width: 16),
              Icon(Icons.send_outlined, color: Colors.white),
              Spacer(),
              Icon(Icons.bookmark_border, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}

class StoryCircle extends StatelessWidget {
  final String username;
  final String imageUrl;
  final bool isYourStory;

  StoryCircle({required this.username, required this.imageUrl, this.isYourStory = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 35,
                child: CircleAvatar(
                  radius: 32,
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
              if (isYourStory)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.add, size: 15, color: Colors.white),
                  ),
                ),
            ],
          ),
          SizedBox(height: 5),
          Text(
            isYourStory ? "Your story" : username,
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
        ],
      ),
    );
  }
}
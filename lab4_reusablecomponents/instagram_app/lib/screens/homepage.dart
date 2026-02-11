import 'package:flutter/material.dart';
import '../widgets/profile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Image.asset('assets/images/Instagram-White-PNG.png', height: 32),
        actions: [
          IconButton(icon: Icon(Icons.add_box_outlined, color: Colors.white), onPressed: () {}),
          IconButton(icon: Icon(Icons.favorite_border, color: Colors.white), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.2), width: 0.5)),
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  StoryCircle(
                    isYourStory: true, 
                    username: "Your story", 
                    imageUrl: "https://wallpapers.com/images/high/cosmic-portrait_-galactic-hair-illustration-nsrw88nrfta1apyr.png",
                  ),
                  StoryCircle(username: "username1", imageUrl: "https://wallpapers.com/images/hd/professional-woman-profile-picture-sgd2fmnjlro6bfm4.png"),
                  StoryCircle(username: "username2", imageUrl: "https://wallpapers.com/images/high/tech-profile-picture-png-06252024-1ot2r68n9yu2sowx.png"),
                  StoryCircle(username: "username3", imageUrl: "https://wallpapers.com/images/hd/professional-woman-profile-picture-sgd2fmnjlro6bfm4.png"),
                  StoryCircle(username: "username4", imageUrl: "https://wallpapers.com/images/high/tech-profile-picture-png-06252024-1ot2r68n9yu2sowx.png"),
                  StoryCircle(username: "username5", imageUrl: "https://wallpapers.com/images/hd/professional-woman-profile-picture-sgd2fmnjlro6bfm4.png"),
                  StoryCircle(username: "username6", imageUrl: "https://wallpapers.com/images/high/tech-profile-picture-png-06252024-1ot2r68n9yu2sowx.png"),
                ],
              ),
            ),

            PostCard(
              username: "username7",
              imageUrl: "https://images.unsplash.com/photo-1517245386807-bb43f82c33c4?w=800",
            ),
            PostCard(
              username: "username8",
              imageUrl: "https://assets-global.website-files.com/5c6e81f1e965e241a716e966/604752ac78e41248f7d8f1b6_3x3-Photo-Prints.jpg",
            ),
          ],
        ),
      ),
    );
  }
}
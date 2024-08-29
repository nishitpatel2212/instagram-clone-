import 'package:flutter/material.dart';
import 'package:insta/component/chatscreen.dart';
import 'package:insta/component/post_hole_body.dart';
import 'package:insta/component/story_ring.dart'; // Import the new LoaderRing component

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    print('Building Homepage');
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        actions: [
          IconButton(
            icon: Icon(Icons.chat),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chatscreen()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LoaderRing(imagePath: "assets/images/man.jpg", username: "User 1"),
                  LoaderRing(imagePath: "assets/images/man.jpg", username: "User 2"),
                  LoaderRing(imagePath: "assets/images/man.jpg", username: "User 3"),
                  LoaderRing(imagePath: "assets/images/man.jpg", username: "User 4"),
                  LoaderRing(imagePath: "assets/images/man.jpg", username: "User 5"),
                  LoaderRing(imagePath: "assets/images/man.jpg", username: "User 6"),
                  LoaderRing(imagePath: "assets/images/man.jpg", username: "User 7"),
                  LoaderRing(imagePath: "assets/images/man.jpg", username: "User 8"),
                  LoaderRing(imagePath: "assets/images/man.jpg", username: "User 9"),
                  LoaderRing(imagePath: "assets/images/man.jpg", username: "User 10"),
                ],
              ),
            ),
          ),
          // Additional body content can be added here
          Expanded(
            child: PostScreen(), // Displaying posts
          ),
        ],
      ),
    );
  }
}

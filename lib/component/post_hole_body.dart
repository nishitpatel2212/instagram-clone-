import 'package:flutter/material.dart';
import 'post_display.dart';

class PostScreen extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/images/product-14.png',
    'assets/images/product-15.png',
    'assets/images/product-16.png',
    'assets/images/instagram.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero, // Remove padding around the ListView
      children: imagePaths.map((path) {
        return PostDisplay(
          profileImage: 'assets/images/profile1.jpg',
          username: 'user1',
          postImage: path, // Pass the image path here
          caption: 'This is a caption for this post',
          likes: 120,
        );
      }).toList(),
    );
  }
}

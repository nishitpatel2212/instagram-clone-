import 'package:flutter/material.dart';
import 'like_button.dart';
import 'comment_button.dart';
import 'share_button.dart';

class PostDisplay extends StatelessWidget {
  final String profileImage;
  final String username;
  final String postImage;
  final String caption;
  final int likes;

  const PostDisplay({
    Key? key,
    required this.profileImage,
    required this.username,
    required this.postImage,
    required this.caption,
    required this.likes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      margin: EdgeInsets.zero, // Remove the margin to eliminate space between cards
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile image and username
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(profileImage),
                  radius: 20,
                ),
                SizedBox(width: 10),
                Text(
                  username,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          // Post image
          Image.asset(postImage, fit: BoxFit.cover),
          // Post actions (like, comment, share)
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                LikeButton(),
                SizedBox(width: 10),
                CommentButton(),
                SizedBox(width: 10),
                ShareButton(),
                Spacer(),
                Icon(Icons.bookmark_border),
              ],
            ),
          ),
          // Like count
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              '$likes likes',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          // Caption
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: username,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: ' $caption',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;
  int likeCount = 0;

  void _toggleLike() {
    setState(() {
      if (isLiked) {
        isLiked = false;
        likeCount--;
      } else {
        isLiked = true;
        likeCount++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            color: isLiked ? Colors.red : Colors.black,
          ),
          onPressed: _toggleLike,
        ),
      
        Text('$likeCount'),
      ],
    );
  }
}

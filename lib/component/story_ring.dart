import 'package:flutter/material.dart';

class LoaderRing extends StatelessWidget {
  final String imagePath;
  final String username;

  const LoaderRing({
    Key? key,
    required this.imagePath,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.orange, Colors.yellow],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(imagePath),
                backgroundColor: Colors.grey[200],
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            username,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
// TODO Implement this library.
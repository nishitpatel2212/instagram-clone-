import 'package:flutter/material.dart';
//import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:insta/component/message_screen.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  final List<Chat> chats = [
    Chat(username: "User 1", imagePath: "assets/images/story1.jpg"),
    Chat(username: "User 2", imagePath: "assets/images/story2.jpg"),
    Chat(username: "User 3", imagePath: "assets/images/story3.jpg"),
    Chat(username: "User 4", imagePath: "assets/images/story4.jpg"),
    Chat(username: "User 5", imagePath: "assets/images/story5.jpg"),
    // Additional chats can be added here
  ];

  final List<types.User> users = [
    const types.User(id: 'user1', firstName: 'User 1'),
    const types.User(id: 'user2', firstName: 'User 2'),
    const types.User(id: 'user3', firstName: 'User 3'),
    const types.User(id: 'user4', firstName: 'User 4'),
    const types.User(id: 'user5', firstName: 'User 5'),
    // Additional users can be added here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the whole screen background color to white
      appBar: AppBar(
        backgroundColor: Colors.white, // App bar background color
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), // Icon color
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: Text('Nis_d_patel', style: TextStyle(color: Colors.black)), // Title color
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: Colors.black), // Icon color
            onPressed: () {
              // Handle add action here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0), // Add padding around the search bar
            child: Container(
              color: Colors.white,
              height: 35,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0), // Add horizontal padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Messages', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Requests', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final chat = chats[index];
                final user = users.firstWhere(
                  (user) => user.firstName == chat.username,
                  orElse: () => types.User(id: 'default'),
                );

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MessageScreen(
                          chatUsername: chat.username,
                          users: [user], // Pass the user data for this chat
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white, // Chat container color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(chat.imagePath),
                          radius: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          chat.username,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Spacer(),
                        Icon(Icons.camera_alt, color: Colors.black),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Chat {
  final String username;
  final String imagePath;

  Chat({required this.username, required this.imagePath});
}

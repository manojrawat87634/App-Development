import 'package:flutter/material.dart';
import 'package:whatsapp/data/data.dart';
import 'package:whatsapp/screens/chat_details.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ChatModel> chatList = [
      ChatModel(
        name: "Rahul",
        lastMessage: "Hey, how are you?",
        image: "https://i.pravatar.cc/150?img=1",
        time: "10:30 AM",
      ),
      ChatModel(
        name: "Neha",
        lastMessage: "Let’s meet tomorrow",
        image: "https://i.pravatar.cc/150?img=2",
        time: "9:15 AM",
      ),
      ChatModel(
        name: "Aman",
        lastMessage: "Send me the files",
        image: "https://i.pravatar.cc/150?img=3",
        time: "Yesterday",
      ),
      ChatModel(
        name: "Pooja",
        lastMessage: "Okay done 👍",
        image: "https://i.pravatar.cc/150?img=4",
        time: "Yesterday",
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Messages"), elevation: 1),
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          final chat = chatList[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ChatDetailScreen(chat: chat)),
              );
            },
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(chat.image),
              ),
              title: Text(
                chat.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(chat.lastMessage),
              trailing: Text(chat.time, style: const TextStyle(fontSize: 12)),
            ),
          );
        },
      ),
    );
  }
}

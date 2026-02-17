import 'package:flutter/material.dart';
import 'package:navigations/models/chat_user.model.dart';
import 'package:navigations/pages/screens/MessageScreen/MessageDetail.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ChatUser> chatUsers = [
      ChatUser(
        name: "Emma Watson",
        lastMessage: "Are we still meeting tomorrow?",
        time: "09:45 AM",
        img: "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
      ),
      ChatUser(
        name: "John Smith",
        lastMessage: "I'll send you the documents.",
        time: "08:30 AM",
        img: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
      ),
      ChatUser(
        name: "Sophia Williams",
        lastMessage: "That sounds perfect!",
        time: "Yesterday",
        img: "https://images.unsplash.com/photo-1544005313-94ddf0286df2",
      ),
      ChatUser(
        name: "Michael Johnson",
        lastMessage: "Can you call me back?",
        time: "Yesterday",
        img: "https://images.unsplash.com/photo-1502767089025-6572583495b0",
      ),
      ChatUser(
        name: "Olivia Brown",
        lastMessage: "Thank you so much 😊",
        time: "Monday",
        img: "https://images.unsplash.com/photo-1524504388940-b1c1722653e1",
      ),
      ChatUser(
        name: "Daniel Martinez",
        lastMessage: "Let's finalize the project today.",
        time: "Sunday",
        img: "https://images.unsplash.com/photo-1527980965255-d3b416303d12",
      ),
      ChatUser(
        name: "Ava Taylor",
        lastMessage: "See you soon!",
        time: "Saturday",
        img: "https://images.unsplash.com/photo-1517841905240-472988babdf9",
      ),
      ChatUser(
        name: "William Anderson",
        lastMessage: "Good night!",
        time: "Friday",
        img: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d",
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Message Screen')),
      body: Center(
        child: Container(
          child: ListView.builder(
            itemCount: chatUsers.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Messagedetail(data: chatUsers[index])));
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(chatUsers[index].img),
                ),
                title: Text(chatUsers[index].name),
                subtitle: Text(chatUsers[index].lastMessage),
                trailing: Text(chatUsers[index].time),
              );
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_proj/models/ChatModel.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  @override
  Widget build(BuildContext context) {
    List<Chatmodel> chatlist = [
      Chatmodel(
        img: "https://i.pravatar.cc/150?img=1",
        name: "Amit Sharma",
        lastMessage: "Hey, are you coming today?",
        time: "09:30 AM",
      ),
      Chatmodel(
        img: "https://i.pravatar.cc/150?img=2",
        name: "Priya Verma",
        lastMessage: "Project is completed 👍",
        time: "10:15 AM",
      ),
      Chatmodel(
        img: "https://i.pravatar.cc/150?img=3",
        name: "Rahul Singh",
        lastMessage: "Call me when you are free",
        time: "11:02 AM",
      ),
      Chatmodel(
        img: "https://i.pravatar.cc/150?img=4",
        name: "Neha Patel",
        lastMessage: "Thanks for the help!",
        time: "12:45 PM",
      ),
      Chatmodel(
        img: "https://i.pravatar.cc/150?img=5",
        name: "Karan Mehta",
        lastMessage: "Let’s meet tomorrow",
        time: "02:10 PM",
      ),
      Chatmodel(
        img: "https://i.pravatar.cc/150?img=6",
        name: "Anjali Gupta",
        lastMessage: "Okay, noted.",
        time: "03:55 PM",
      ),
      Chatmodel(
        img: "https://i.pravatar.cc/150?img=7",
        name: "Rohit Kumar",
        lastMessage: "Sent you the documents",
        time: "05:20 PM",
      ),
      Chatmodel(
        img: "https://i.pravatar.cc/150?img=8",
        name: "Sneha Roy",
        lastMessage: "Good night 😊",
        time: "09:40 PM",
      ),
    ];

    return Scaffold(
      body: ListView.builder(
        itemCount: chatlist.length,
        itemBuilder: (context, index) {
          Chatmodel item = chatlist[index];
          return InkWell(
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(item.img),
              ),
              title: Text(item.name),
              subtitle: Text(item.lastMessage),
              trailing: Text(item.time),
            ),
          );
        },
      ),
    );
  }
}

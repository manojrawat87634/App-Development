import 'package:api_handling/models/my_data.dart';
import 'package:api_handling/services/api_service.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});
  final ChatService chatService = ChatService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chats")),
      body: FutureBuilder<List<MyDataModel>>(
        future: chatService.fetchUsers(),
        builder: (context, snapshot) {
          
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          final users = snapshot.data ?? [];

          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final u = users[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(u.image),
                ),
                title: Text(u.name),
                subtitle: Text(u.message),
                trailing: Text(
                  u.email,
                  // timeAgo(u.email),
                  style: TextStyle(color: Colors.grey[600]),
                ),
              );
            },
          );
        },
      ),
    );
  }

  // String timeAgo(DateTime date) {
  //   final diff = DateTime.now().difference(date);
  //   if (diff.inMinutes < 1) return "Just now";
  //   if (diff.inHours < 1) return "${diff.inMinutes}m ago";
  //   if (diff.inDays < 1) return "${diff.inHours}h ago";
  //   return "${diff.inDays}d ago";
  // }
}

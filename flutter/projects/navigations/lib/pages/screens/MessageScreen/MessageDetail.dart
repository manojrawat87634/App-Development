import 'package:flutter/material.dart';
import 'package:navigations/models/chat_user.model.dart';

class Messagedetail extends StatefulWidget{
  final ChatUser data;
  const Messagedetail({super.key, required this.data});
  @override
  State<Messagedetail> createState() => _Messagedetail();
}

class _Messagedetail extends State<Messagedetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data.name),
      ),
      body: Center(
        child: Text(
          'This is the Message Detail Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status Screen'),
      ),
      body: Center(
        child: Text(
          'This is the Status Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

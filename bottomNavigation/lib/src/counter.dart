import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter App")),
      body: Center(child: Text(num.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() {
            num++;
          }),
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

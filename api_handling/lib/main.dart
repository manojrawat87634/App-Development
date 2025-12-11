import 'package:api_handling/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: HomePage(),
      )
    );
  }
}
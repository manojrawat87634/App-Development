
import 'package:flutter/material.dart';
import 'package:navigations/pages/screens/HomeScreen.dart';
import 'package:navigations/pages/screens/MessageScreen/MessageScreen.dart';
import 'package:navigations/pages/screens/NotificationScreen.dart';
import 'package:navigations/pages/screens/StatusScreen.dart';

class MainScreen extends StatefulWidget{
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreen();
}
class _MainScreen extends State<MainScreen> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    final List<Widget> screen_list = [HomeScreen(), MessageScreen(), NotificationScreen(), StatusScreen()];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_max_outlined), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.videocam_outlined), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.message_outlined), label: ""),
      ],
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: const Color.fromARGB(255, 31, 31, 31) ,
      onTap: (index){
        setState(() {
          currentIndex = index;
        });
      },
      ),
      body: screen_list[currentIndex],
    );
  }
}

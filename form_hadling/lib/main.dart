import 'package:flutter/material.dart';
import 'package:form_hadling/froms.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyAdvForms());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  final TextEditingController _emailControllers = TextEditingController();
  final TextEditingController _passwordControllers = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Fiverr"),
            TextField(
              controller: _emailControllers,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                labelText: "Enter your email and Password",
              ),
            ),
            TextField(
              controller: _passwordControllers,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Enter your email and Password",
              ),
            ),
            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {
                  print(_emailControllers.text);
                  print(_passwordControllers.text);
                  _emailControllers.clear();
                  _passwordControllers.clear();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedSuperellipseBorder(),
                ),

                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nested_navbar/views/chat/chat_component.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: const [
          SentMessage(message: "Hello this is cool"),
          SentMessage(message: "How are you"),
          SentMessage(
              message:
                  "Now is good day to try something new and work on it. Stick to the plan"),
        ],
      ),
    );
  }
}

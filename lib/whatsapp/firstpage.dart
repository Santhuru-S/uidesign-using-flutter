import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 700,
            // width: MediaQuery.of(context).size.width,
            color: Colors.teal.shade100,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:frontend/ChatPage.dart';
import 'package:frontend/LoginPage.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heaviety Business Chat',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Chatpage(),
    );
  }
}

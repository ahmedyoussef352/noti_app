// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  String id;
  MessageScreen({required this.id, super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Message Screen ${widget.id}',
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}

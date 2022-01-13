import 'package:flutter/material.dart';

class MessageInput extends StatefulWidget {
  const MessageInput({Key? key}) : super(key: key);

  @override
  _MessageInputState createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var borderSide = const BorderSide(
      color: Colors.grey,
      width: 0.5,
    );
    return Card(
      margin: const EdgeInsets.all(0),
      elevation: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: TextField(
          controller: _controller,
          keyboardType: TextInputType.multiline,
          minLines: 1,
          maxLines: 2,
          decoration: const InputDecoration(
            hintText: 'Type a message',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
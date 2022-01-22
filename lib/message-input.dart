import 'package:firebase_flutter_messaging/api/message.service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_flutter_messaging/static-messages.dart';

class MessageInput extends StatefulWidget {
  final Function() notifyParent;

  const MessageInput({required this.notifyParent, Key? key}) : super(key: key);

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
    return Card(
      margin: const EdgeInsets.all(0),
      elevation: 100,
      child: Row(
        children: [
          Expanded(
            flex: 99,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 4,
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
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              if (_controller.text.isEmpty) return;
              final String message = _controller.text.trim();
              if (message.isEmpty) return;
              // trim text
              MessageService.addMessage(message);
              // StaticMessages.addMessage(message);
              _controller.clear();

              widget.notifyParent();
            },
          ),
        ],
      ),
    );
  }
}

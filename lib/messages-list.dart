import 'package:flutter/material.dart';
import 'package:flutter_application_1/static-messages.dart';

import 'message.dart';

class MessagesList extends StatefulWidget {
  MessagesList({Key? key}) : super(key: key);

  @override
  _MessagesListState createState() => _MessagesListState();
}

class _MessagesListState extends State<MessagesList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      reverse: true,
      shrinkWrap: true,
      children: StaticMessages.staticMessages
          .asMap()
          .entries
          .map((entry) => Message(
                isMe: entry.key % 2 == 0,
                message: entry.value,
              ))
          .toList(),
    );
  }
}

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_flutter_messaging/api/message.service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_flutter_messaging/static-messages.dart';

import 'message.dart';

class MessagesList extends StatefulWidget {
  MessagesList({Key? key}) : super(key: key);

  @override
  _MessagesListState createState() => _MessagesListState();
}

class _MessagesListState extends State<MessagesList> {
  final Stream<QuerySnapshot> _messagesStream =
      MessageService.getMessagesStream();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _messagesStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('$snapshot.error');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          reverse: true,
          shrinkWrap: true,
          children: snapshot.data!.docs
              .asMap()
              .entries
              .map((entry) => Message(
                  isMe: Platform.operatingSystem == entry.value['sender'],
                  message: entry.value['message']))
              .toList(),
          // children: StaticMessages.staticMessages
          //     .asMap()
          //     .entries
          //     .map((entry) => Message(
          //           isMe: entry.key % 2 == 0,
          //           message: entry.value,
          //         ))
          //     .toList(),
        );
      },
    );
  }
}

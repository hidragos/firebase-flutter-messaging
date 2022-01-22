import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_flutter_messaging/api/message.model.dart';
import 'package:flutter/widgets.dart';

class MessageService {
  static final messagesRef = FirebaseFirestore.instance
      .collection('messages')
      .withConverter<MessageModel>(
        fromFirestore: (snapshot, _) => MessageModel.fromJson(snapshot.data()!),
        toFirestore: (movie, _) => movie.toJson(),
      );

  static getMessagesStream() {
    return messagesRef.orderBy('timestamp', descending: true).snapshots();
  }

  static addMessage(String message) async {
    await messagesRef.add(MessageModel(
        message: message,
        timestamp: DateTime.now(),
        sender: Platform.operatingSystem));
  }
}

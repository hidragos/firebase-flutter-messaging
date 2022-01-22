import 'package:firebase_flutter_messaging/global-data.dart';
import 'package:flutter/material.dart';
import 'package:dart_emoji/dart_emoji.dart';

class Message extends StatelessWidget {
  final String message;
  final bool isMe;
  final double isMePaddingH = 32;
  final double standardPaddingH = 8;
  final double standardPaddingV = 0.5;

  const Message({required this.isMe, required this.message, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 1,
        child: Align(
            alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
            child: Card(
                color: GlobalData.primaryColor[500],
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(message,
                        style: TextStyle(
                            fontSize: (!EmojiUtil.hasOnlyEmojis(message)
                                ? null
                                : message.length <= 32
                                    ? message.length <= 4
                                        ? 75
                                        : 25
                                    : null)))))));
  }
}

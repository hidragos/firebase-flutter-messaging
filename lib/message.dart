import 'dart:ffi';

import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  String message;
  bool isMe;
  final double isMeDifference = 32;
  final double standardPaddingH = 8;
  final double standardPaddingV = 0.5;

  Message({required this.isMe, required this.message, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          isMe ? isMeDifference : standardPaddingH,
          standardPaddingV,
          !isMe ? isMeDifference : standardPaddingH,
          standardPaddingV),
      child: SizedBox(
          width: Size.infinite.width,
          child: Card(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(message),
          ))),
    );
  }
}

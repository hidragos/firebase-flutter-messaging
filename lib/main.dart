import 'package:flutter/material.dart';
import 'package:flutter_application_1/main-view.dart';
import 'package:flutter_application_1/message.dart';
import 'package:flutter_application_1/statitc-messages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController _controller;

  List<String> messages = staticMessages;

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
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          title: Text(widget.title),
        ),
        body: MainView(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: ListView(
                  reverse: true,
                  shrinkWrap: true,
                  children: messages
                      .asMap()
                      .entries
                      .map((entry) => Message(
                            isMe: entry.key % 2 == 0,
                            message: entry.value,
                          ))
                      .toList(),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type a message',
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

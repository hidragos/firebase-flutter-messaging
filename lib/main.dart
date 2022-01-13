import 'package:flutter/material.dart';
import 'package:flutter_application_1/global-data.dart';
import 'package:flutter_application_1/main-view.dart';
import 'package:flutter_application_1/message-input.dart';
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
        primarySwatch: GlobalData.primaryColor,
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
  List<String> messages = staticMessages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          title: Text(widget.title),
        ),
        body: MainView(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  GlobalData.primaryColor,
                  Colors.white,
                ])),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
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
                Expanded(flex: 0, child: MessageInput())
              ],
            ),
          ),
        ));
  }
}

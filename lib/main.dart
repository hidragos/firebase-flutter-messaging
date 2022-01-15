import 'package:flutter/material.dart';
import 'package:flutter_application_1/main-view.dart';
import 'package:flutter_application_1/message-input.dart';
import 'package:flutter_application_1/message.dart';
import 'package:flutter_application_1/messages-list.dart';
import 'package:flutter_application_1/static-messages.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
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
  num count = 0;

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
                  Colors.teal,
                  Colors.white,
                ])),
            child: Column(
              children: [
                Expanded(flex: 1, child: MessagesList()),
                Expanded(
                    flex: 0,
                    child: MessageInput(
                      notifyParent: refresh,
                    ))
              ],
            ),
          ),
        ));
  }

  refresh() {
    setState(() {});
  }
}

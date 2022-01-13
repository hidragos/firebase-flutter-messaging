import 'package:flutter/cupertino.dart';

class MainView extends StatelessWidget {
  final Widget? child;

  const MainView({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Size.infinite.width,
      height: Size.infinite.height,
      child: child,
    );
  }
}

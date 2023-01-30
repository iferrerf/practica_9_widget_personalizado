import 'package:flutter/material.dart';
import 'pages.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const AvatarPage(),
      Card_Page(),
      ListView1_Page(),
      ListView2_Page(),
      Alert_Page(),
    ];
    return myList[index];
  }
}

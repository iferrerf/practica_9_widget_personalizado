import 'package:flutter/material.dart';

// ignore: camel_case_types
class BNavigator extends StatefulWidget {
  final Function currentIndex;
  const BNavigator({super.key, required this.currentIndex});

  @override
  State<BNavigator> createState() => _BNavigatorState();
}

class _BNavigatorState extends State<BNavigator> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i) {
        setState(() {
          index = i;
          widget.currentIndex(i);
        });
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.amber,
      iconSize: 25,
      selectedFontSize: 16.0,
      unselectedFontSize: 12.0,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.theater_comedy_outlined), label: "Avatar"),
        BottomNavigationBarItem(
            icon: Icon(Icons.image_rounded), label: "Cards"),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "List1"),
        BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined), label: "List2"),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_alert_sharp), label: "Alert"),
      ],
    );
  }
}

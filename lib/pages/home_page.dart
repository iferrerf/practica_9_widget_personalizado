import 'package:flutter/material.dart';
import 'package:practica_9_widget_personalizado/pages/pages.dart';

class Home_Page extends StatefulWidget {
  Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int index = 0;
  BNavigator? myBNB;

  @override
  void initState() {
    myBNB = BNavigator(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBNB,
      body: Routes(index: index),
    );

    // return Scaffold(
    //   bottomNavigationBar: ConvexAppBar(
    //     items: const [
    //       TabItem(icon: Icons.home, title: 'Home'),
    //       TabItem(icon: Icons.list, title: 'List1'),
    //       TabItem(icon: Icons.list_alt, title: 'List2'),
    //       TabItem(icon: Icons.image, title: 'Card'),
    //       TabItem(icon: Icons.alarm, title: 'Alert'),
    //     ],
    //     onTap: (int i) {
    //       switch (i) {
    //         case 0:
    //           Navigator.pushNamed(context, 'widget');
    //           break;
    //         case 1:
    //           Navigator.pushNamed(context, 'lista1');
    //           break;
    //         case 2:
    //           Navigator.pushNamed(context, 'lista2');
    //           break;
    //         case 3:
    //           Navigator.pushNamed(context, 'card');
    //           break;
    //         case 4:
    //           Navigator.pushNamed(context, 'alert');
    //           break;
    //         default:
    //       }
    //     },
    //   ),
    // );
  }
}

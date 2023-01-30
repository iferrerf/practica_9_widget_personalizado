import 'package:flutter/material.dart';

// ignore: camel_case_types
class widget_personalizado extends StatelessWidget {
  const widget_personalizado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget personalizado'),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => Navigator.pushNamed(context, 'lista1'),
              icon: const Icon(Icons.list),
              color: Colors.amber,
            ),
            IconButton(
              onPressed: () => Navigator.pushNamed(context, 'lista2'),
              icon: const Icon(Icons.list_alt),
              color: Colors.amber,
            ),
            IconButton(
              onPressed: () => Navigator.pushNamed(context, 'card'),
              icon: const Icon(Icons.image),
              color: Colors.amber,
            ),
            const SizedBox(width: 20.0),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}

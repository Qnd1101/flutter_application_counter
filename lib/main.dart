import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 0;
  void push() {
    setState(() {
      num;
    });
    num++;
    print(num);
  }

  void pop() {
    setState(() {
      num;
    });
    num--;
    print(num);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          children: [
            FloatingActionButton(
              onPressed: push,
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: pop,
              child: const Icon(Icons.exposure_minus_1),
            )
          ],
        ),
        body: Center(
          child: Text(
            '$num',
            style: const TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}

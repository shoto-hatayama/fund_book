import 'package:flutter/material.dart';
import 'package:fund_book/View/switch_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fund book',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SwitchRoute(),
    );
  }
}

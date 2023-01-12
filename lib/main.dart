import 'package:flutter/material.dart';
import 'maff/maff_wiget.dart';

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
      routes: {'/': (context) => const MaffWiget(title: '農林水産省')},
    );
  }
}

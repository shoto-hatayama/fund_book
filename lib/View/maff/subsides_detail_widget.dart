import 'package:flutter/material.dart';
import 'package:fund_book/entity/subsides.dart';

class SubsidesDetailWidget extends StatelessWidget {
  final Subsides subsides;
  const SubsidesDetailWidget({super.key, required this.subsides});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: SingleChildScrollView(
          child: Column(
        children: [
          // TODO:項目を表示するwidget作成
        ],
      )),
    );
  }
}

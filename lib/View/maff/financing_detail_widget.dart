import 'package:flutter/material.dart';
import 'package:fund_book/entity/financing.dart';

class FinancingDetailWidget extends StatelessWidget {
  final Financing financing;
  const FinancingDetailWidget({super.key, required this.financing});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: SingleChildScrollView(
          child: Column(
        children: [
          // TODO:項目を表示するwidgeを作成
        ],
      )),
    );
  }
}

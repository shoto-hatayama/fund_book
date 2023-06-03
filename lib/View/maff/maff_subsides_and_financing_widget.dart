import 'package:flutter/material.dart';

class MaffSubsidesAndFinancingWidget extends StatefulWidget {
  @override
  State<MaffSubsidesAndFinancingWidget> createState() =>
      _SubsidesAndFinancingWidget();
}

class _SubsidesAndFinancingWidget
    extends State<MaffSubsidesAndFinancingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('補助金・融資', style: TextStyle(fontSize: 20)),
    ));
  }
}

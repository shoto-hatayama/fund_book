import 'package:flutter/material.dart';

class MaffAppBar extends StatelessWidget {
  final _tabs = [
    Tab(text: '公募', icon: Icon(Icons.star_rate)),
    Tab(text: '補助金・融資', icon: Icon(Icons.attach_money)),
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: TabBar(tabs: _tabs),
    );
  }

  int length() {
    return _tabs.length;
  }

  List<Tab> getTabs() {
    return _tabs;
  }
}

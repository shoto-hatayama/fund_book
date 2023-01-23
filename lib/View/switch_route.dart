import 'package:flutter/material.dart';
import 'package:fund_book/View/bottomnavigationwidget.dart';
import 'package:fund_book/View/jnet21/jnet21_widget.dart';
import 'package:fund_book/View/maff/maff_widget.dart';

class SwitchRoute extends StatefulWidget {
  const SwitchRoute({super.key});

  @override
  State<SwitchRoute> createState() => _SwitchRouteState();
}

class _SwitchRouteState extends State<SwitchRoute> {
  int _selectedIndex = 0;

  void setSelectedIndex(int index) => setState(() {
        _selectedIndex = index;
      });
  final _page = [MaffWiget(), Jnet21Widget()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_selectedIndex],
      bottomNavigationBar: BottomNavigationWidget(
        selectedIndex: _selectedIndex,
        setSelectedIndex: setSelectedIndex,
      ),
    );
  }
}

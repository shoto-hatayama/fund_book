import 'package:flutter/material.dart';
import 'package:fund_book/View/maff/maff_public_offering_widget.dart';
import 'package:fund_book/View/maff/maff_subsides_and_financing_widget.dart';

class MaffWiget extends StatefulWidget {
  const MaffWiget({super.key, required this.title});

  final String title;

  @override
  State<MaffWiget> createState() => _MaffWigetState();
}

class _MaffWigetState extends State<MaffWiget> {
  final tabs = [
    Tab(text: '公募', icon: Icon(Icons.star_rate)),
    Tab(text: '補助金・融資', icon: Icon(Icons.attach_money)),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(tabs: tabs),
        ),
        body: TabBarView(
          children: <Widget>[
            MaffPublicOfferingWidget(),
            MaffSubsidesAndFinancingWidget(),
          ],
        ),
      ),
    );
  }
}

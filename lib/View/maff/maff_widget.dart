import 'package:flutter/material.dart';
import 'package:fund_book/View/maff/maff_public_offering_widget.dart';
import 'package:fund_book/View/maff/maff_subsides_and_financing_widget.dart';
import 'package:fund_book/View/maff_appbar.dart';

class MaffWiget extends StatefulWidget {
  const MaffWiget({super.key});

  @override
  State<MaffWiget> createState() => _MaffWigetState();
}

class _MaffWigetState extends State<MaffWiget> {
  MaffAppBar _maff_appbar = MaffAppBar();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _maff_appbar.length(),
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: _maff_appbar.getTabs()),
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

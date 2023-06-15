import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fund_book/model/make_top_view.dart';

class MaffSubsidesAndFinancingWidget extends StatefulWidget {
  @override
  State<MaffSubsidesAndFinancingWidget> createState() =>
      _SubsidesAndFinancingWidget();
}

class _SubsidesAndFinancingWidget
    extends State<MaffSubsidesAndFinancingWidget> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MakeTopView>(
        create: (_) => MakeTopView(context),
        child: Scaffold(
            body: Consumer<MakeTopView>(builder: (context, model, child) {
          final fundingList = Provider.of<MakeTopView>(context);
          return Column(children: [
            Expanded(
                child: ListView(
              children: fundingList.result,
            ))
          ]);
        })));
  }
}

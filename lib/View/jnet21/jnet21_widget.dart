import 'package:flutter/material.dart';
import 'package:fund_book/entity/jnet21.dart';
import 'package:fund_book/model/jnet21_list_model.dart';
import 'package:fund_book/View/jnet21/jnet21_dropdown_widget.dart';
import 'package:fund_book/model/jnet21_make_top_view.dart';
import 'package:provider/provider.dart';

class Jnet21Widget extends StatefulWidget {
  @override
  State<Jnet21Widget> createState() => _Jnet21WidgetState();
}

class _Jnet21WidgetState extends State<Jnet21Widget> {
  List<Jnet21> jnet21 = [];
  List<GestureDetector> list_jnet21 = [];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Jnet21MakeTopView>(
        create: (_) => Jnet21MakeTopView(context),
        child: Scaffold(
          appBar: AppBar(title: Text('')),
          body: Consumer<Jnet21MakeTopView>(
            builder: (context, model, child) {
              final topView = Provider.of<Jnet21MakeTopView>(context);

              return Column(
                children: [
                  Jnet21DropdownWidget(
                    topView: topView,
                  ),
                  Expanded(
                      child: ListView(
                    children: topView.result,
                  ))
                ],
              );
            },
          ),
        ));
  }
}

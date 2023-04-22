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
    return ChangeNotifierProvider<Jnet21ListModel>(
        create: (_) => Jnet21ListModel()..getJnet21(),
        child: Scaffold(
          body: Consumer<Jnet21ListModel>(
            builder: (context, model, child) {
              jnet21 = model.jnet21;
              list_jnet21 = Jnet21MakeTopView(jnet21).result;
              return Column(
                children: [
                  Jnet21DropdownWidget(),
                  Expanded(
                      child: ListView(
                    children: list_jnet21,
                  ))
                ],
              );
            },
          ),
        ));
  }
}

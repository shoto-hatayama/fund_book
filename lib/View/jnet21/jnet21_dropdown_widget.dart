import 'package:flutter/material.dart';
import 'package:fund_book/entity/jnet21.dart';
import 'package:fund_book/model/jnet21_list_model.dart';
import 'package:fund_book/model/jnet21_make_top_view.dart';
import 'package:fund_book/const/jnet21_drop_down.dart';

class Jnet21DropdownWidget extends StatefulWidget {
  final Jnet21MakeTopView topView;
  const Jnet21DropdownWidget({Key? key, required this.topView})
      : super(key: key);

  @override
  State<Jnet21DropdownWidget> createState() => _Jnet21DropdownState();
}

class _Jnet21DropdownState extends State<Jnet21DropdownWidget> {
  String type = Jnet21DropDown.types[0];
  String industry = Jnet21DropDown.industrys[0];
  String area = Jnet21DropDown.areas[0];
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('検索条件'),
      children: [
        Row(children: [
          Text('種類：'),
          Spacer(),
          DropdownButton(
              items:
                  Jnet21DropDown.types.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem(value: value, child: Text(value));
              }).toList(),
              value: type,
              onChanged: (String? value) {
                setState(() {
                  type = value!;
                  widget.topView.search(type, industry, area);
                });
              })
        ]),
        Row(children: [
          Text('業種：'),
          Spacer(),
          DropdownButton(
              items: Jnet21DropDown.industrys
                  .map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem(value: value, child: Text(value));
              }).toList(),
              value: industry,
              onChanged: (String? value) {
                setState(() {
                  industry = value!;
                  widget.topView.search(type, industry, area);
                });
              })
        ]),
        Row(children: [
          Text('地域：'),
          Spacer(),
          DropdownButton(
              items:
                  Jnet21DropDown.areas.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem(value: value, child: Text(value));
              }).toList(),
              value: area,
              onChanged: (String? value) {
                setState(() {
                  area = value!;
                  widget.topView.search(type, industry, area);
                });
              })
        ])
      ],
    );
  }
}

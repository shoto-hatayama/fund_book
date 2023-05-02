import 'package:flutter/material.dart';
import 'package:fund_book/entity/jnet21.dart';
import 'package:fund_book/model/jnet21_list_model.dart';
import 'package:fund_book/model/jnet21_make_top_view.dart';

class Jnet21DropdownWidget extends StatefulWidget {
  final Jnet21MakeTopView topView;
  const Jnet21DropdownWidget({Key? key, required this.topView})
      : super(key: key);

  @override
  State<Jnet21DropdownWidget> createState() => _Jnet21DropdownState();
}

class _Jnet21DropdownState extends State<Jnet21DropdownWidget> {
  // TODO：モックのため後程変数は変更する
  String type = '補助金・助成金';
  String selectedValue2 = '製造業';
  String selectedValue3 = '宮城県';
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('検索条件'),
      children: [
        Row(children: [
          Text('種類：'),
          Spacer(),
          DropdownButton(
              items: const [
                DropdownMenuItem(value: '補助金・助成金', child: Text('補助金・助成金')),
                DropdownMenuItem(value: '融資', child: Text('融資')),
                DropdownMenuItem(value: '出資', child: Text('出資')),
                DropdownMenuItem(value: '税制', child: Text('税制'))
              ],
              value: type,
              onChanged: (String? value) {
                setState(() {
                  type = value!;
                });
              })
        ]),
        Row(children: [
          Text('業種：'),
          Spacer(),
          DropdownButton(
              items: const [
                DropdownMenuItem(value: '製造業', child: Text('製造業')),
                DropdownMenuItem(value: 'サービス業', child: Text('サービス業'))
              ],
              value: selectedValue2,
              onChanged: (String? value) {
                setState(() {
                  selectedValue2 = value!;
                });
              })
        ]),
        Row(children: [
          Text('地域：'),
          Spacer(),
          DropdownButton(
              items: const [
                DropdownMenuItem(value: '宮城県', child: Text('宮城県')),
                DropdownMenuItem(value: '秋田県', child: Text('秋田県'))
              ],
              value: selectedValue3,
              onChanged: (String? value) {
                setState(() {
                  selectedValue3 = value!;
                });
              })
        ])
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Jnet21DropdownWidget extends StatefulWidget {
  const Jnet21DropdownWidget({super.key});

  @override
  State<Jnet21DropdownWidget> createState() => _Jnet21DropdownState();
}

class _Jnet21DropdownState extends State<Jnet21DropdownWidget> {
  // TODO：モックのため後程変数は変更する
  String selectedValue1 = '補助金';
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
                DropdownMenuItem(value: '補助金', child: Text('補助金')),
                DropdownMenuItem(value: '融資', child: Text('融資'))
              ],
              value: selectedValue1,
              onChanged: (String? value) {
                setState(() {
                  selectedValue1 = value!;
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

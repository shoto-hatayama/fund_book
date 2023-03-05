import 'package:flutter/material.dart';
import 'package:fund_book/model/jnet21_list_model.dart';
import 'package:provider/provider.dart';

class Jnet21Widget extends StatefulWidget {
  @override
  State<Jnet21Widget> createState() => _Jnet21WidgetState();
}

class _Jnet21WidgetState extends State<Jnet21Widget> {
  // TODO：モックのため後程変数は変更する
  String selectedValue1 = '補助金';
  String selectedValue2 = '製造業';
  String selectedValue3 = '宮城県';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Jnet21ListModel>(
        create: (_) => Jnet21ListModel()..getJnet21(),
        child: Scaffold(
          body: Consumer<Jnet21ListModel>(
            builder: (context, model, child) {
              final jnet21 = model.jnet21;
              final list_jnet21 = jnet21
                  .map((jnet21) => GestureDetector(
                      onTap: () {
                        // 後程実装
                      },
                      child:
                          // カードウィジェットにJNET21から取得した情報を入れる
                          // TODO:後で表示の仕方について検討する（LISTTILEのタイトルの左側が空欄できる）
                          Card(
                              child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text('タイトル'),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                          ),
                          // 期間が存在しない時は「-」のみにする
                          Text('期間：2022月1月1日〜2023年1月1日'),
                          Text('地域：宮城県'),
                        ],
                      ))))
                  .toList();
              return Column(
                children: [
                  ExpansionTile(
                    title: Text('検索条件'),
                    children: [
                      Row(children: [
                        Text('種類：'),
                        Spacer(),
                        DropdownButton(
                            items: const [
                              DropdownMenuItem(
                                  value: '補助金', child: Text('補助金')),
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
                              DropdownMenuItem(
                                  value: '製造業', child: Text('製造業')),
                              DropdownMenuItem(
                                  value: 'サービス業', child: Text('サービス業'))
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
                              DropdownMenuItem(
                                  value: '宮城県', child: Text('宮城県')),
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
                  ),
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

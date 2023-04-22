import 'package:flutter/material.dart';
import 'package:fund_book/entity/jnet21.dart';

class Jnet21MakeTopView {
  final List<Jnet21> _jnet21List;
  List<GestureDetector> result = [];

  Jnet21MakeTopView(this._jnet21List) {
    this.makeTopViewList(this._jnet21List);
  }

  void makeTopViewList(List<Jnet21> list) {
    this.result = list
        .map((jnet21) => GestureDetector(
            onTap: () {
              // 後程実装
            },
            child:
                // TODO:後で表示の仕方について検討する（LISTTILEのタイトルの左側が空欄できる）
                Card(
                    child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(jnet21.title),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
                // 期間が存在しない時は「-」のみにする
                Text('期間：' + jnet21.termDate()),
                Text('地域：' + jnet21.area),
              ],
            ))))
        .toList();
  }
}

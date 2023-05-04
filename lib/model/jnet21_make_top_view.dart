import 'package:flutter/material.dart';
import 'package:fund_book/entity/jnet21.dart';
import 'package:fund_book/model/jnet21_list_model.dart';

class Jnet21MakeTopView extends ChangeNotifier {
  List<Jnet21> _jnet21List = [];
  List<GestureDetector> result = [];

  Jnet21MakeTopView() {
    loadJnet21List();
  }

  Future<void> loadJnet21List() async {
    final jnet = Jnet21ListModel();
    await jnet.getJnet21();
    this._jnet21List = jnet.getList();
    this.makeTopViewList(this._jnet21List);
    notifyListeners();
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
    notifyListeners();
  }

  void search(String type, String industory, String area) {
    List<Jnet21> result = [];
    for (Jnet21 val in this._jnet21List) {
      if (!type.isEmpty && !val.type.contains(type)) continue;
      if (!industory.isEmpty && !val.industry.contains(industory)) continue;
      if (val.area.contains(area)) {
        result.add(val);
      }
    }
    ;
    this.makeTopViewList(result);
    notifyListeners();
  }
}

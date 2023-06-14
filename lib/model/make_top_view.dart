import 'package:flutter/material.dart';
import 'package:fund_book/entity/financing.dart';
import 'package:fund_book/model/financiing_list.dart';

class MakeTopView extends ChangeNotifier {
  List _fundingList = [];
  List<GestureDetector> result = [];
  final BuildContext context;

  MakeTopView(this.context) {
    loadFundingList();
  }

  Future<void> loadFundingList() async {
    final financing = FinancingList();
    await financing.getFinancing();
    _fundingList = financing.getList();
  }

  void financingTopView(List<Financing> fundingList) {
    result = fundingList
        .map((financing) => GestureDetector(
            onTap: () {
              // 後程実装
            },
            child: Card(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(financing.title),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
                Text('借入限度額' + financing.borrowingLimit),
                Text('償還期限：' + financing.termOfRedemption),
              ],
            ))))
        .toList();
    notifyListeners();
  }
}

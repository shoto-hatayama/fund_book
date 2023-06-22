import 'package:flutter/material.dart';
import 'package:fund_book/entity/financing.dart';
import 'package:fund_book/model/financiing_list.dart';
import 'package:fund_book/model/subsides_list.dart';
import 'package:fund_book/entity/subsides.dart';

class MakeTopView extends ChangeNotifier {
  List _fundingList = [];
  List<GestureDetector> result = [];
  final String financing = '融資';
  final String subsides = '補助金';
  final BuildContext context;

  MakeTopView(this.context) {
    loadFundingList();
  }

  Future<void> loadFundingList() async {
    final financingList = FinancingList();
    await financingList.getFinancing();
    financingTopView(financingList.getList());
    notifyListeners();
  }

  Future<void> loadSubsidesList() async {
    final subsidesList = SubsidesList();
    await subsidesList.getSubsides();
    subsidesTopView(subsidesList.getList());
    notifyListeners();
  }

  void subsidesTopView(List<Subsides> subsidesList) {
    result = subsidesList
        .map((subsides) => GestureDetector(
            onTap: () {
              // 後程実装
            },
            child: Card(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(subsides.title),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
                const Text(
                  '対象者：',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(subsides.target),
                const Text('公募時期',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(subsides.season)
              ],
            ))))
        .toList();
    notifyListeners();
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
                Text(
                  '対象者：',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(financing.target),
                Text('借入限度額：', style: TextStyle(fontWeight: FontWeight.bold)),
                Text(financing.borrowingLimit)
              ],
            ))))
        .toList();
    notifyListeners();
  }

  void search(String type) {
    if (financing == type) {
      loadFundingList();
    } else if (subsides == type) {
      loadSubsidesList();
    }
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:fund_book/entity/financing.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FinancingList extends ChangeNotifier {
  List<Financing> _list = [];

  Future<void> getFinancing() async {
    final collection =
        await FirebaseFirestore.instance.collection('MAFF_FINANCING').get();
    final financing = collection.docs
        .map((doc) => Financing(
            doc['title'],
            doc['outline'],
            doc['target'],
            doc['interest'],
            doc['borrowingLimit'],
            doc['termOfRedemption'],
            doc['remarks'],
            doc['url']))
        .toList();

    _list = financing;
    notifyListeners();
  }

  List<Financing> getList() {
    return _list;
  }
}

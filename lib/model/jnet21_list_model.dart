import 'package:flutter/material.dart';
import 'package:fund_book/entity/jnet21.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Jnet21ListModel extends ChangeNotifier {
  List<Jnet21> _jnet21 = [];

  Future<void> getJnet21() async {
    final collection = await FirebaseFirestore.instance
        .collection('JNET21_SUBSIDES_AND_FINANCING')
        .get();
    final jnet21 = collection.docs
        .map((doc) => Jnet21(
            doc['type'],
            doc['title'],
            doc['area'],
            doc['industry'],
            doc['executing_agency'],
            doc['executing_agency_info'],
            doc['start_date'],
            doc['end_date'],
            doc['detail_url'],
            doc['detail_url_name']))
        .toList();

    this._jnet21 = jnet21;
    notifyListeners();
  }

  List<Jnet21> getList() {
    return this._jnet21;
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fund_book/entity/subsides.dart';

class SubsidesList extends ChangeNotifier {
  List<Subsides> _list = [];

  Future<void> getSubsides() async {
    final collection =
        await FirebaseFirestore.instance.collection('MAFF_SUBSIDES').get();
    final subsides = collection.docs
        .map((docs) => Subsides(docs['title'], docs['outline'], docs['season'],
            docs['rate'], docs['target'], docs['remarks'], docs['url']))
        .toList();

    _list = subsides;
    notifyListeners();
  }

  List<Subsides> getList() {
    return _list;
  }
}

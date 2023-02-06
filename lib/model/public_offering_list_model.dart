import 'package:flutter/material.dart';
import 'package:fund_book/entity/public_offering.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PublicOfferingListModel extends ChangeNotifier {
  List<PublicOffering> public_Offering = [];

  Future<void> getPublicOffering() async {
    final collection = await FirebaseFirestore.instance
        .collection('MAFF_PUBLIC_OFFERING')
        .get();
    final public_offering = collection.docs
        .map((doc) => PublicOffering(doc['public_offering_name'], doc['url'],
            doc['begin_date'], doc['end_date']))
        .toList();

    /// 表示画面には期日が早い順で並べる
    public_offering.sort((a, b) => a.endDate.compareTo(b.endDate));

    this.public_Offering = public_offering;
    notifyListeners();
  }
}

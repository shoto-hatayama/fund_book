import 'package:flutter/material.dart';
import 'package:fund_book/entity/financing.dart';
import 'package:fund_book/model/financiing_list.dart';

class MakeTopView extends ChangeNotifier {
  List _fundingList = [];
  List<GestureDetector> result = [];
  final BuildContext context;

  MakeTopView(this.context) {}
}

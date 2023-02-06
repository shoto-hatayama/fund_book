import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class PublicOffering {
  late final String name;
  late final String url;
  late final DateTime beginDate;
  late final DateTime endDate;

  PublicOffering(
      String name, String url, Timestamp beginDate, Timestamp endDate) {
    final convert_datetime_begindate = beginDate.toDate();
    final convert_datetime_enddate = endDate.toDate();
    if (convert_datetime_begindate == null) {
      print("beginDateがDateTime型に変換できませんでした");
      return;
    }
    if (convert_datetime_enddate == null) {
      print("endDateがDateTime型に変換できませんでした");
      return;
    }
    this.name = name;
    this.url = url;
    this.beginDate = convert_datetime_begindate;
    this.endDate = convert_datetime_enddate;
  }

  /// 開始日をyyyy-MM-ddで返す
  String getFormatedBeginDate() {
    return DateFormat("yyyy-MM-dd").format(this.beginDate);
  }

  /// 終了日をyyyy-MM-ddで返す
  String getFormatedEndDate() {
    return DateFormat("yyyy-MM-dd").format(this.endDate);
  }
}

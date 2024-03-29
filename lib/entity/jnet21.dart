import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class Jnet21 {
  late final String type;
  late final String title;
  late final String area;
  late final String industry;
  late final String executingAgency;
  late final String executingAgencyInfo;
  late final DateTime startDate;
  late final DateTime endDate;
  late final String detailUrl;
  late final String detailUrlName;

  Jnet21(
    String type,
    String title,
    String area,
    String industry,
    String executingAgency,
    String executingAgencyInfo,
    Timestamp startDate,
    Timestamp endDate,
    String detailUrl,
    String detailUrlName,
  ) {
    final convert_datetime_startdate = startDate.toDate();
    final convert_datetime_endDate = endDate.toDate();
    if (convert_datetime_startdate == null) {
      print("beginDateがDateTime型に変換できませんでした");
      return;
    }
    if (convert_datetime_endDate == null) {
      print("endDateがDateTime型に変換できませんでした");
      return;
    }
    this.type = type;
    this.title = title;
    this.area = area;
    this.industry = industry;
    this.executingAgency = executingAgency;
    this.executingAgencyInfo = executingAgencyInfo;
    this.detailUrl = detailUrl;
    this.detailUrlName = detailUrlName;
    this.startDate = convert_datetime_startdate;
    this.endDate = convert_datetime_endDate;
  }

  String termDate() {
    // この日付よりも古いものは開始日または終了日の日付の記載がなかったもの
    DateTime date = DateTime(2000, 2, 1);

    if (date.isAfter(this.startDate)) {
      return DateFormat('〜yyyy年MM月dd日').format(this.endDate);
    }
    if (date.isAfter(this.endDate)) {
      return DateFormat('yyyy年MM月dd日〜').format(this.startDate);
    }
    return DateFormat('yyyy年MM月dd日〜').format(this.startDate) +
        DateFormat('yyyy年MM月dd日').format(this.endDate);
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class PublicOffering {
  String name;
  String url;
  Timestamp beginDate;
  Timestamp endDate;
  PublicOfferingModel(this.name, this.url, this.beginDate, this.endDate);
}

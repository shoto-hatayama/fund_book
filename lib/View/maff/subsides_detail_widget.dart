import 'package:flutter/material.dart';
import 'package:fund_book/entity/subsides.dart';
import 'package:fund_book/const/subsides_item_name.dart';
import 'package:fund_book/View/component/detail_card.dart';
import 'package:url_launcher/url_launcher.dart';

class SubsidesDetailWidget extends StatelessWidget {
  final Subsides subsides;
  const SubsidesDetailWidget({super.key, required this.subsides});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: SingleChildScrollView(
          child: Column(
        children: [
          DetailCard(SubsidesItemName.title, subsides.title).make(),
          DetailCard(SubsidesItemName.outline, subsides.outline).make(),
          DetailCard(SubsidesItemName.season, subsides.outline).make(),
          DetailCard(SubsidesItemName.rate, subsides.rate).make(),
          DetailCard(SubsidesItemName.target, subsides.target).make(),
          DetailCard(SubsidesItemName.remarks, subsides.remarks).make(),
          ElevatedButton(
              onPressed: () {
                launchUrl(Uri.parse(subsides.url),
                    mode: LaunchMode.inAppWebView);
              },
              child: const Text('詳細を見る'))
        ],
      )),
    );
  }
}

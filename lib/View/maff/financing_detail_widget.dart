import 'package:flutter/material.dart';
import 'package:fund_book/entity/financing.dart';
import 'package:fund_book/View/component/detail_card.dart';
import 'package:fund_book/const/financing_item_name.dart';
import 'package:url_launcher/url_launcher.dart';

class FinancingDetailWidget extends StatelessWidget {
  final Financing financing;
  const FinancingDetailWidget({super.key, required this.financing});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: SingleChildScrollView(
          child: Column(
        children: [
          DetailCard(FinancingItemName.title, financing.title).make(),
          DetailCard(FinancingItemName.outline, financing.outline).make(),
          DetailCard(FinancingItemName.target, financing.target).make(),
          DetailCard(FinancingItemName.interest, financing.interest).make(),
          DetailCard(FinancingItemName.borrowingLimit, financing.borrowingLimit)
              .make(),
          DetailCard(FinancingItemName.termOfRedemption,
                  financing.termOfRedemption)
              .make(),
          DetailCard(FinancingItemName.remarks, financing.remarks).make(),
          ElevatedButton(
              onPressed: () {
                launchUrl(Uri.parse(financing.url),
                    mode: LaunchMode.inAppWebView);
              },
              child: const Text('詳細を見る'))
        ],
      )),
    );
  }
}

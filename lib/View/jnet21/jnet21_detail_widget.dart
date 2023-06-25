import 'package:flutter/material.dart';
import 'package:fund_book/const/jnet21_item_name.dart';
import 'package:fund_book/entity/jnet21.dart';
import 'package:fund_book/View/component/detail_card.dart';
import 'package:url_launcher/url_launcher.dart';

class Jnet21DetailWidget extends StatelessWidget {
  final Jnet21 jnet21;
  const Jnet21DetailWidget({super.key, required this.jnet21});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              DetailCard(Jnet21ItemName.title, jnet21.title).make(),
              DetailCard(Jnet21ItemName.expirationDate, jnet21.termDate())
                  .make(),
              DetailCard(Jnet21ItemName.type, jnet21.type).make(),
              DetailCard(Jnet21ItemName.area, jnet21.area).make(),
              DetailCard(Jnet21ItemName.industry, jnet21.industry).make(),
              DetailCard(Jnet21ItemName.executingAgency, jnet21.executingAgency)
                  .make(),
              DetailCard(Jnet21ItemName.executingAgencyInfo,
                      jnet21.executingAgencyInfo)
                  .make(),
              // TODO:ボタンの色は後ほど検討
              ElevatedButton(
                  onPressed: () {
                    launchUrl(Uri.parse(jnet21.detailUrl),
                        mode: LaunchMode.inAppWebView);
                  },
                  child: const Text(Jnet21ItemName.detailUrlName))
            ],
          ),
        ));
  }
}

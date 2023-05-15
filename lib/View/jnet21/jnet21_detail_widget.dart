import 'package:flutter/material.dart';
import 'package:fund_book/entity/jnet21.dart';

class Jnet21DetailWidget extends StatelessWidget {
  final Jnet21 jnet21;
  const Jnet21DetailWidget({super.key, required this.jnet21});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('')),
        body: Center(
          child: Text('jnet21の詳細ページです'),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:fund_book/entity/jnet21.dart';

class Jnet21DetailWidget extends StatelessWidget {
  final Jnet21 jnet21;
  const Jnet21DetailWidget({super.key, required this.jnet21});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('')),
        body: Column(
          children: [
            Card(
              child: Column(
                children: const [
                  ListTile(
                      title: Text(
                    'タイトル',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  Text('内容')
                ],
              ),
              color: Colors.green[100],
              margin: const EdgeInsets.all(10),
              elevation: 8,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ));
  }
}

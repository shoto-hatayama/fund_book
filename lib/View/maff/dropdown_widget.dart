import 'package:flutter/material.dart';
import 'package:fund_book/model/make_top_view.dart';
import 'package:fund_book/const/dropdown_item.dart';

class DropdownWidget extends StatefulWidget {
  final MakeTopView topView;
  const DropdownWidget({Key? key, required this.topView}) : super(key: key);

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String type = '融資';

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('検索条件'),
      children: [
        Row(children: [
          const Text('種類：'),
          Spacer(),
          DropdownButton(
              items: DropdownItem.type.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem(value: value, child: Text(value));
              }).toList(),
              value: type,
              onChanged: (String? value) {
                setState(() {
                  type = value!;
                  widget.topView.search(value);
                });
              })
        ])
      ],
    );
  }
}

import 'package:carbon12/screens/periodic_table_page/components/element_tile.dart';
import 'package:carbon12/screens/periodic_table_page/components/spacer_box.dart';
import 'package:flutter/material.dart';

class Period2 extends StatelessWidget {
  final Map data;

  const Period2({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 2; i < 4; i++) ElementTile(symbol: data['elements'][i]['symbol']),
        const SpacerBox(width: 10),
        for (int i = 4; i < 10; i++) ElementTile(symbol: data['elements'][i]['symbol']),
      ],
    );
  }
}

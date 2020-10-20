import 'package:carbon12/screens/periodic_table_page/components/element_tile.dart';
import 'package:flutter/material.dart';

class Period6 extends StatelessWidget {
  final Map data;

  const Period6({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 54; i < 56; i++) ElementTile(symbol: data['elements'][i]['symbol']),
        ElementTile(symbol: '*'),
        for (int i = 103; i < 118; i++) ElementTile(symbol: data['elements'][i]['symbol']),
      ],
    );
  }
}
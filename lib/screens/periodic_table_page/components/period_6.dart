import 'package:carbon12/screens/periodic_table_page/components/element_tile.dart';
import 'package:flutter/material.dart';

class Period6 extends StatelessWidget {
  final Map data;

  const Period6({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 54; i < 56; i++) ElementTile(symbol: data['elements'][i]['symbol'], index: i),
        ElementTile(symbol: '*', index: null),
        for (int i = 71; i < 86; i++) ElementTile(symbol: data['elements'][i]['symbol'], index: i),
      ],
    );
  }
}
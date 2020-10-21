import 'package:carbon12/screens/periodic_table_page/components/element_tile.dart';
import 'package:flutter/material.dart';

class Period4 extends StatelessWidget {
  final Map data;

  const Period4({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 18; i < 36; i++) ElementTile(symbol: data['elements'][i]['symbol'], index: i),
      ],
    );
  }
}

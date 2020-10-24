import 'package:carbon12/screens/periodic_table_page/components/element_tile.dart';
import 'package:flutter/material.dart';

class Period7 extends StatelessWidget {
  final Map data;

  const Period7({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 86; i < 88; i++) ElementTile(symbol: data['elements'][i]['symbol'], index: i),
        IgnorePointer(ignoring: true, child: ElementTile(symbol: '**', index: null)),
        for (int i = 103; i < 118; i++) ElementTile(symbol: data['elements'][i]['symbol'], index: i),
      ],
    );
  }
}

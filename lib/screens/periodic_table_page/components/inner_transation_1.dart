import 'package:carbon12/screens/periodic_table_page/components/element_tile.dart';
import 'package:carbon12/screens/periodic_table_page/components/spacer_box.dart';
import 'package:flutter/material.dart';

class InnerTransation1 extends StatelessWidget {
  final Map data;

  const InnerTransation1({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SpacerBox(width: 1),
        IgnorePointer(ignoring: true, child: ElementTile(symbol: '*', index: null)),
        for (int i = 56; i < 71; i++) ElementTile(symbol: data['elements'][i]['symbol'], index: i),
        const SpacerBox(width: 1),
      ],
    );
  }
}

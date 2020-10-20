import 'package:carbon12/screens/periodic_table_page/components/element_tile.dart';
import 'package:carbon12/screens/periodic_table_page/components/spacer_box.dart';
import 'package:flutter/material.dart';

class Period1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ElementTile(symbol: 'H'),
        const SpacerBox(width: 16),
        const ElementTile(symbol: 'He'),
      ],
    );
  }
}

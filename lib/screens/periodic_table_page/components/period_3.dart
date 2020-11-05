import 'package:carbon12/screens/periodic_table_page/components/element_tile.dart';
import 'package:carbon12/screens/periodic_table_page/components/spacer_box.dart';
import 'package:carbon12/screens/periodic_table_page/components/theme_button.dart';
import 'package:flutter/material.dart';

class Period3 extends StatelessWidget {
  final Map data;

  const Period3({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 10; i < 12; i++) ElementTile(symbol: data['elements'][i]['symbol'], index: i),
        const SpacerBox(width: 4),
        ThemeButton(),
        const SpacerBox(width: 4),
        for (int i = 12; i < 18; i++) ElementTile(symbol: data['elements'][i]['symbol'], index: i),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ElementTile extends StatelessWidget {
  final String symbol;

  const ElementTile({Key key, @required this.symbol}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: 70,
        width: 70,
        child: Neumorphic(
          style: NeumorphicStyle(
            color: Theme.of(context).primaryColor,
            shadowDarkColor: Theme.of(context).primaryColorDark,
            shadowLightColor: Theme.of(context).primaryColorLight,
            depth: 10,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
          ),
          child: Center(
            child: Text(
              symbol,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
      ),
    );
  }
}

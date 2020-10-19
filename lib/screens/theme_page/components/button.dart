import 'package:carbon12/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeuButton extends StatelessWidget {
  final GestureTapCallback onTap;

  const NeuButton({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: size.width * 0.2,
        width: size.width * 0.8,
        child: Neumorphic(
          style: NeumorphicStyle(
            color: Theme.of(context).primaryColor,
            shadowDarkColor: Theme.of(context).primaryColorDark,
            shadowLightColor: Theme.of(context).primaryColorLight,
            depth: 10,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
          ),
          child: Center(
            child: Text(
              'Done',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
        ),
      ),
    );
  }
}

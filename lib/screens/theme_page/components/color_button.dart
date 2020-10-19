import 'package:carbon12/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ColorButton extends StatelessWidget {
  final ThemeData theme;
  final String text;
  final GestureTapCallback onTap;

  const ColorButton(this.text, {Key key, @required this.theme, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: size.width * 0.5,
        width: size.width * 0.4,
        child: Neumorphic(
          style: NeumorphicStyle(
            color: Theme.of(context).primaryColor,
            shadowDarkColor: Theme.of(context).primaryColorDark,
            shadowLightColor: Theme.of(context).primaryColorLight,
            depth: 10,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
          ),
          padding: const EdgeInsets.all(7),
          child: Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: CustomColors.kTransparent,
              border: Border.all(
                color: Theme.of(context).accentColor,
                width: 3,
                style: Theme.of(context).primaryColor == theme.primaryColor ? BorderStyle.solid : BorderStyle.none,
              ),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Neumorphic(
              style: NeumorphicStyle(
                color: Theme.of(context).primaryColor,
                shadowDarkColorEmboss: Theme.of(context).primaryColorDark,
                shadowLightColorEmboss: Theme.of(context).primaryColorLight,
                depth: -10,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: size.width * 0.2,
                      width: size.width * 0.2,
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          color: theme.primaryColor,
                          shadowDarkColor: Theme.of(context).primaryColorDark,
                          shadowLightColor: Theme.of(context).primaryColorLight,
                          depth: 10,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                        ),
                      ),
                    ),
                    Text(
                      text,
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

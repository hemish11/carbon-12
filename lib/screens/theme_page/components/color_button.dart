import 'package:carbon12/colors.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';

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
      child: Container(
        height: size.width * 0.5,
        width: size.width * 0.4,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              offset: const Offset(-5, -5),
              color: Theme.of(context).primaryColorLight,
              blurRadius: 10,
            ),
            BoxShadow(
              offset: const Offset(5, 5),
              color: Theme.of(context).primaryColorDark,
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(7),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
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
          child: NeuCard(
            bevel: 10,
            curveType: CurveType.emboss,
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.width * 0.2,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                      color: theme.primaryColor,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(-5, -5),
                          color: Theme.of(context).primaryColorLight,
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          offset: const Offset(5, 5),
                          color: Theme.of(context).primaryColorDark,
                          blurRadius: 10,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
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
    );
  }
}

import 'dart:math';

import 'package:carbon12/screens/theme_page/theme_page.dart';
import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ThemePage(),
        ),
      ),
      child: Container(
        width: 170,
        height: 70,
        margin: const EdgeInsets.all(15),
        alignment: Alignment.center,
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
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Themes', style: Theme.of(context).textTheme.bodyText1),
            const SizedBox(width: 10),
            Transform.rotate(
              angle: pi / 6,
              child: Icon(Icons.brightness_3, size: 35, color: Theme.of(context).accentColor),
            ),
          ],
        ),
      ),
    );
  }
}

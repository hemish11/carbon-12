import 'package:flutter/material.dart';

class ButtonBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        height: size.width * 0.15,
        width: size.width * 0.15,
        margin: const EdgeInsets.all(15.0),
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
          borderRadius: BorderRadius.circular(15),
        ),
        child: Align(
          alignment: Alignment(0.2, 0),
          child: Icon(
            Icons.arrow_back_ios,
            size: 32,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}

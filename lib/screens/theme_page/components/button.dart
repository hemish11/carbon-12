import 'package:flutter/material.dart';

class NeuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        height: 150,
        width: size.width * 0.8,
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
        alignment: Alignment.center,
        child: Center(
          child: Text(
            'Done',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ),
    );
  }
}

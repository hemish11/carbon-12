import 'package:flutter/material.dart';

class SpacerBox extends StatelessWidget {
  final int width;

  const SpacerBox({Key key, this.width = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: (100 * width).toDouble(),
    );
  }
}

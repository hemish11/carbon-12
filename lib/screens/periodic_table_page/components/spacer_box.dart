import 'package:flutter/material.dart';

class SpacerBox extends StatelessWidget {
  final int width;

  const SpacerBox({Key key, this.width = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.1 + 30,
      width: (size.width * 0.2 + 30) * width,
    );
  }
}

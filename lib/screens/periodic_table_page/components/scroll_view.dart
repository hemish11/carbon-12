import 'package:flutter/material.dart';

class BidirectionalScrollView extends StatelessWidget {
  final Widget child;

  const BidirectionalScrollView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: child,
        ),
      ),
    );
  }
}

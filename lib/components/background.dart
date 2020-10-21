import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Background extends StatelessWidget {
  final Widget child;
  final bool givePadding;

  const Background({Key key, this.child, this.givePadding = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Theme.of(context).brightness == Brightness.light ? Brightness.dark : Brightness.light,
        statusBarBrightness: Theme.of(context).brightness,
      ),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SizedBox(
          height: size.height,
          width: size.width,
          child: SafeArea(
            child: Padding(
              padding: givePadding ? const EdgeInsets.all(10.0) : const EdgeInsets.all(0),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

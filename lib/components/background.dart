import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({Key key, this.child}) : super(key: key);

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
              padding: const EdgeInsets.all(10.0),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

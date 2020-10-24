import 'package:carbon12/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageButton extends StatelessWidget {
  final url;

  const ImageButton({Key key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Image.asset(
        'assets/images/wiki_logo.png',
        color: Theme.of(context).brightness == Brightness.light ? CustomColors.kDark1 : CustomColors.kLight1,
        height: 35,
      ),
    );
  }
}

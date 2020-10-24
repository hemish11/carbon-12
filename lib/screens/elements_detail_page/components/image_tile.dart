import 'package:carbon12/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageTile extends StatelessWidget {
  final url;

  const ImageTile({Key key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () async {
        if (await canLaunch(url)) await launch(url);
      },
      child: Container(
        width: size.width * 0.85,
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(10.0),
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
          children: [
            const SizedBox(width: 20),
            SizedBox(
              width: size.width * 0.5,
              child: Text(
                'For more Information Click',
                style: Theme.of(context).textTheme.headline2.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/wiki_logo.png',
                color: Theme.of(context).brightness == Brightness.light ? CustomColors.kDark1 : CustomColors.kLight1,
                height: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

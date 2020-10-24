import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextTile extends StatelessWidget {
  final String headline;
  final String body;
  final String url;

  const TextTile({Key key, @required this.headline, @required this.body, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () async {
        if (await canLaunch(url)) await launch(url);
      },
      child: Container(
        height: 80,
        width: size.width * 0.85,
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
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Text(
              '$headline:',
              style: Theme.of(context).textTheme.headline2.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(width: 10),
            Text(
              body,
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
    );
  }
}

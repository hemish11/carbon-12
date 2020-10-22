import 'package:flutter/material.dart';

class LongTextTile extends StatelessWidget {
  final String headline;
  final String body;
  final TextAlign textAlign;

  const LongTextTile({Key key, @required this.headline, this.body, this.textAlign = TextAlign.justify})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
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
      child: Column(
        crossAxisAlignment: textAlign == TextAlign.justify ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 20),
          Text(
            headline,
            style: Theme.of(context).textTheme.headline2.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              body,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: textAlign,
            ),
          ),
        ],
      ),
    );
  }
}

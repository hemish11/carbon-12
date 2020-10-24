import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListTextTile extends StatelessWidget {
  final String headline;
  final List list;
  final String unit;
  final String url;

  const ListTextTile({Key key, @required this.headline, @required this.list, this.unit = '', this.url})
      : super(key: key);

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
        child: Column(
          children: [
            const SizedBox(width: 20),
            Text(
              headline,
              style: Theme.of(context).textTheme.headline2.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            if (list.length == 0)
              Text('-', style: Theme.of(context).textTheme.headline2)
            else
              ...list
                  .map(
                    (item) => Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(item.toString() + unit, style: Theme.of(context).textTheme.headline2),
                      ),
                    ),
                  )
                  .toList(),
          ],
        ),
      ),
    );
  }
}

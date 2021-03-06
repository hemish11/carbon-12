import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ColorTile extends StatelessWidget {
  final String color;

  const ColorTile({Key key, @required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () async {
        String url =
            'https://en.wikipedia.org/wiki/CPK_coloring#:~:text=In%20chemistry%2C%20the%20CPK%20coloring,and%20improved%20by%20Walter%20Koltun.';

        if (await canLaunch(url)) await launch(url);
      },
      child: Container(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              'CPK Coloring',
              style: Theme.of(context).textTheme.headline2.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 20),
            color == '0xFFnull'
                ? Center(child: Text('-', style: Theme.of(context).textTheme.headline2))
                : Container(
                    height: 40,
                    width: size.width * 0.7,
                    decoration: BoxDecoration(
                      color: Color(int.parse(color ?? '000000')),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(-7, -7),
                          color: Theme.of(context).primaryColorLight,
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          offset: const Offset(7, 7),
                          color: Theme.of(context).primaryColorDark,
                          blurRadius: 10,
                        ),
                      ],
                      border: Border.all(
                        width: 1,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

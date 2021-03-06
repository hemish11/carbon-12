import 'package:carbon12/screens/elements_detail_page/elements_detail_page.dart';
import 'package:flutter/material.dart';

class ElementTile extends StatelessWidget {
  final String symbol;
  final int index;

  const ElementTile({Key key, @required this.symbol, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ElementsDetailPage(index: index),
        ),
      ),
      child: Container(
        height: 70,
        width: 70,
        margin: const EdgeInsets.all(15.0),
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
        alignment: Alignment.center,
        child: Text(
          symbol,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}

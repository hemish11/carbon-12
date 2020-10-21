import 'dart:convert';

import 'package:carbon12/components/background.dart';
import 'package:carbon12/screens/elements_detail_page/components/long_text_tile.dart';
import 'package:carbon12/screens/elements_detail_page/components/list_text_tile.dart';
import 'package:carbon12/screens/elements_detail_page/components/text_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ElementsDetailPage extends StatefulWidget {
  final int index;

  const ElementsDetailPage({Key key, @required this.index}) : super(key: key);

  @override
  _ElementsDetailPageState createState() => _ElementsDetailPageState();
}

class _ElementsDetailPageState extends State<ElementsDetailPage> {
  String path1 = 'assets/json/json1.json';
  String path2 = 'assets/json/json2.json';

  Map json1;
  Map json2;

  bool isLoaded = false;

  @override
  void initState() {
    rootBundle.loadString(path1).then((value) => json1 = jsonDecode(value));
    rootBundle
        .loadString(path2)
        .then((value) => json2 = jsonDecode(value))
        .then((value) => setState(() => isLoaded = true));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      child: isLoaded
          ? SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Text(json2['elements'][widget.index]['name'], style: Theme.of(context).textTheme.headline1),
                  const SizedBox(height: 20),
                  TextTile(headline: 'Atomic Number', body: json2['elements'][widget.index]['number'].toString()),
                  TextTile(headline: 'Atomic Mass', body: json2['elements'][widget.index]['atomic_mass'].toString()),
                  LongTextTile(headline: 'Summary', body: json2['elements'][widget.index]['summary'].toString()),
                  TextTile(headline: 'Melting Point', body: json2['elements'][widget.index]['melt'].toString()),
                  TextTile(headline: 'Boiling Point', body: json2['elements'][widget.index]['boil'].toString()),
                  TextTile(
                    headline: 'Year Discovered',
                    body: json1['elements'][widget.index]['yearDiscovered'].toString(),
                  ),
                ],
              ),
            )
          : Center(
              child: Text(
                'Loading...',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
    );
  }
}

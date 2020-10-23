import 'dart:convert';

import 'package:carbon12/components/background.dart';
import 'package:carbon12/screens/elements_detail_page/components/color_tile.dart';
import 'package:carbon12/screens/elements_detail_page/components/image_button.dart';
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(json2['elements'][widget.index]['name'], style: Theme.of(context).textTheme.headline1),
                      ImageButton(url: json2['elements'][widget.index]['source']),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextTile(headline: 'Atomic Number', body: json2['elements'][widget.index]['number'].toString()),
                  TextTile(
                    headline: 'Atomic Mass',
                    body: json2['elements'][widget.index]['atomic_mass'].toStringAsFixed(4) + ' u',
                  ),
                  LongTextTile(headline: 'Summary', body: json2['elements'][widget.index]['summary'].toString()),
                  LongTextTile(
                    headline: 'Category',
                    body: (json2['elements'][widget.index]['category'] ?? '-').toString(),
                  ),
                  TextTile(
                    headline: 'Melting Point',
                    body: (json2['elements'][widget.index]['melt'] ?? '-').toString() + ' K',
                  ),
                  TextTile(
                    headline: 'Boiling Point',
                    body: (json2['elements'][widget.index]['boil'] ?? '-').toString() + ' K',
                  ),
                  TextTile(
                    headline: 'Year Discovered',
                    body: json1['elements'][widget.index]['yearDiscovered'].toString(),
                  ),
                  LongTextTile(
                    headline: 'Discovered By',
                    body: json2['elements'][widget.index]['discovered_by'].toString(),
                  ),
                  LongTextTile(
                    headline: 'Electron Configuration',
                    body:
                        "${json2['elements'][widget.index]['electron_configuration'].toString()}\nOR\n${json2['elements'][widget.index]['electron_configuration_semantic'].toString()}",
                    textAlign: TextAlign.left,
                  ),
                  LongTextTile(
                    headline: 'Van Der Waals radius',
                    body: (json1['elements'][widget.index]['vanDerWaalsRadius'] ?? '-').toString() + ' pm',
                  ),
                  TextTile(
                    headline: 'Atomic Radius',
                    body: (json1['elements'][widget.index]['atomicRadius'] ?? '-').toString() + ' pm',
                  ),
                  LongTextTile(
                    headline: 'Oxidation states',
                    body: json1['elements'][widget.index]['oxidationStates'] ?? '-',
                  ),
                  LongTextTile(
                    headline: 'Bonding type',
                    body: (json1['elements'][widget.index]['bondingType'] ?? '-').toString(),
                  ),
                  TextTile(
                    headline: 'Density',
                    body: json2['elements'][widget.index]['density'].toString() + ' g/L',
                  ),
                  ListTextTile(headline: 'Shells', list: json2['elements'][widget.index]['shells']),
                  LongTextTile(
                    headline: 'Electron Affinity',
                    body: (json1['elements'][widget.index]['electronAffinity'] ?? '-').toString() + ' kJ/mol',
                  ),
                  LongTextTile(
                    headline: 'Electron Negativity',
                    body: (json1['elements'][widget.index]['electronegativity'] ?? '-').toString(),
                  ),
                  LongTextTile(
                    headline: 'Appearance',
                    body: (json2['elements'][widget.index]['appearance'] ?? '-').toString(),
                  ),
                  ListTextTile(
                    headline: 'Ionization Energies',
                    list: json2['elements'][widget.index]['ionization_energies'],
                    unit: 'kJ/mol',
                  ),
                  ColorTile(color: "0xFF${json2['elements'][widget.index]['cpk-hex']}"),
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

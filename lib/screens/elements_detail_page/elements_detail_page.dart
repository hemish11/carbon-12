import 'dart:convert';

import 'package:carbon12/components/background.dart';
import 'package:carbon12/screens/elements_detail_page/components/color_tile.dart';
import 'package:carbon12/screens/elements_detail_page/components/image_tile.dart';
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

  Future<void> loadData() async {
    String rawData;

    rawData = await rootBundle.loadString(path1);
    json1 = jsonDecode(rawData);

    rawData = await rootBundle.loadString(path2);
    json2 = jsonDecode(rawData);
  }

  @override
  void initState() {
    loadData().then((value) => setState(() => isLoaded = true));

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
                  TextTile(
                    headline: 'Atomic Number',
                    body: json2['elements'][widget.index]['number'].toString(),
                    url: 'https://en.wikipedia.org/wiki/Atomic_number',
                  ),
                  LongTextTile(
                    headline: 'Atomic Mass',
                    body: json2['elements'][widget.index]['atomic_mass'].toStringAsFixed(4) + ' u',
                    url: 'https://en.wikipedia.org/wiki/Atomic_mass',
                  ),
                  LongTextTile(headline: 'Summary', body: json2['elements'][widget.index]['summary'].toString()),
                  LongTextTile(
                    headline: 'Category',
                    body: (json2['elements'][widget.index]['category'] ?? '-').toString(),
                  ),
                  TextTile(
                    headline: 'Melting Point',
                    body: (json2['elements'][widget.index]['melt'] ?? '-').toString() + ' K',
                    url: 'https://en.wikipedia.org/wiki/Melting_point',
                  ),
                  TextTile(
                    headline: 'Boiling Point',
                    body: (json2['elements'][widget.index]['boil'] ?? '-').toString() + ' K',
                    url: 'https://en.wikipedia.org/wiki/Boiling_point',
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
                        "${json2['elements'][widget.index]['electron_configuration']}\nOR\n${json2['elements'][widget.index]['electron_configuration_semantic']}",
                    textAlign: TextAlign.left,
                    url: 'https://en.wikipedia.org/wiki/Electron_configuration',
                  ),
                  LongTextTile(
                    headline: 'Van Der Waals radius',
                    body: (json1['elements'][widget.index]['vanDerWaalsRadius'] ?? '-').toString() + ' pm',
                    url: 'https://en.wikipedia.org/wiki/Van_der_Waals_radius',
                  ),
                  TextTile(
                    headline: 'Atomic Radius',
                    body: (json1['elements'][widget.index]['atomicRadius'] ?? '-').toString() + ' pm',
                    url: 'https://en.wikipedia.org/wiki/Atomic_radius',
                  ),
                  LongTextTile(
                    headline: 'Oxidation states',
                    body: json1['elements'][widget.index]['oxidationStates'] ?? '-',
                  ),
                  LongTextTile(
                    headline: 'Bonding type',
                    body: (json1['elements'][widget.index]['bondingType'] ?? '-').toString(),
                    url: 'https://en.wikipedia.org/wiki/Chemical_bond',
                  ),
                  TextTile(
                    headline: 'Density',
                    body: json2['elements'][widget.index]['density'].toString() + ' g/L',
                    url: 'https://en.wikipedia.org/wiki/Density',
                  ),
                  ListTextTile(
                    headline: 'Electron shells',
                    list: json2['elements'][widget.index]['shells'],
                    url: 'https://en.wikipedia.org/wiki/Electron_shell',
                  ),
                  LongTextTile(
                    headline: 'Electron Affinity',
                    body: (json1['elements'][widget.index]['electronAffinity'] ?? '-').toString() + ' kJ/mol',
                    url: 'https://en.wikipedia.org/wiki/Electron_affinity',
                  ),
                  LongTextTile(
                    headline: 'Electronegativity',
                    body: (json1['elements'][widget.index]['electronegativity'] ?? '-').toString(),
                    url: 'https://en.wikipedia.org/wiki/Electronegativity',
                  ),
                  LongTextTile(
                    headline: 'Appearance',
                    body: (json2['elements'][widget.index]['appearance'] ?? '-').toString(),
                  ),
                  ListTextTile(
                    headline: 'Ionization Energies',
                    list: json2['elements'][widget.index]['ionization_energies'],
                    unit: ' kJ/mol',
                    url: 'https://en.wikipedia.org/wiki/Ionization_energy',
                  ),
                  ColorTile(color: "0xFF${json2['elements'][widget.index]['cpk-hex']}"),
                  ImageTile(url: json2['elements'][widget.index]['source']),
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

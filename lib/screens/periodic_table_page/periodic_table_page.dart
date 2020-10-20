import 'dart:convert';

import 'package:carbon12/components/background.dart';
import 'package:carbon12/screens/periodic_table_page/components/inner_transation_1.dart';
import 'package:carbon12/screens/periodic_table_page/components/inner_transation_2.dart';
import 'package:carbon12/screens/periodic_table_page/components/period_1.dart';
import 'package:carbon12/screens/periodic_table_page/components/period_2.dart';
import 'package:carbon12/screens/periodic_table_page/components/period_3.dart';
import 'package:carbon12/screens/periodic_table_page/components/period_4.dart';
import 'package:carbon12/screens/periodic_table_page/components/period_5.dart';
import 'package:carbon12/screens/periodic_table_page/components/period_6.dart';
import 'package:carbon12/screens/periodic_table_page/components/period_7.dart';
import 'package:carbon12/screens/periodic_table_page/components/scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PeriodicTablePage extends StatefulWidget {
  @override
  _PeriodicTablePageState createState() => _PeriodicTablePageState();
}

class _PeriodicTablePageState extends State<PeriodicTablePage> {
  String path = 'assets/json/json2.json';
  Map data = {
    "elements": [
      for (int i = 0; i < 118; i++) {"symbol": ""}
    ]
  };

  @override
  void initState() {
    rootBundle.loadString(path).then((value) => setState(() => data = jsonDecode(value)));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      child: BidirectionalScrollView(
        child: Column(
          children: [
            Period1(),
            Period2(data: data),
            Period3(data: data),
            Period4(data: data),
            Period5(data: data),
            Period6(data: data),
            Period7(data: data),
            const SizedBox(height: 40),
            InnerTransation1(data: data),
            InnerTransation2(data: data),
          ],
        ),
      ),
    );
  }
}

import 'package:carbon12/screens/theme_page/theme_page.dart';
import 'package:carbon12/utils/theme_notifier.dart';
import 'package:carbon12/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(create: (_) => ThemeNotifier(lightTheme1), child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carbon 12',
      home: ThemePage(),
      theme: themeNotifier.getTheme(),
    );
  }
}

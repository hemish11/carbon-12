import 'package:carbon12/screens/periodic_table_page/periodic_table_page.dart';
import 'package:carbon12/utils/theme_notifier.dart';
import 'package:carbon12/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(ChangeNotifierProvider(create: (_) => ThemeNotifier(Themes.lightTheme1), child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeNotifier themeNotifier = Provider.of<ThemeNotifier>(context);

    SharedPreferences.getInstance().then((prefs) {
      if (prefs.getString('THEME') == 'Dark2') {
        themeNotifier.setTheme(Themes.darkTheme2);
      } else if (prefs.getString('THEME') == 'Dark1') {
        themeNotifier.setTheme(Themes.darkTheme1);
      } else if (prefs.getString('THEME') == 'Light2') {
        themeNotifier.setTheme(Themes.lightTheme2);
      } else {
        themeNotifier.setTheme(Themes.lightTheme1);
      }
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carbon 12',
      home: PeriodicTablePage(),
      theme: themeNotifier.getTheme(),
    );
  }
}

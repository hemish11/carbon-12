import 'package:carbon12/themes.dart';
import 'package:carbon12/utils/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemePage extends StatefulWidget {
  @override
  _ThemePageState createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Theme.of(context).brightness == Brightness.light ? Brightness.dark : Brightness.light,
        statusBarBrightness: Theme.of(context).brightness,
      ),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: FlatButton(
            onPressed: () {
              isDark = !isDark;

              changeTheme(isDark ? Themes.darkTheme1 : Themes.lightTheme1, isDark ? 'Dark1' : 'Light1', themeNotifier);
            },
            child: Text(
              'Change Theme',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ),
      ),
    );
  }

  void changeTheme(ThemeData theme, String name, ThemeNotifier themeNotifier) async {
    themeNotifier.setTheme(theme);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('THEME', name);
  }
}

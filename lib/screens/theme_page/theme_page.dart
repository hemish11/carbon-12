import 'package:carbon12/components/background.dart';
import 'package:carbon12/screens/theme_page/components/button.dart';
import 'package:carbon12/screens/theme_page/components/color_button.dart';
import 'package:carbon12/themes.dart';
import 'package:carbon12/utils/theme_notifier.dart';
import 'package:flutter/material.dart';
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
    final ThemeNotifier themeNotifier = Provider.of<ThemeNotifier>(context);
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        children: [
          Text('Select Theme', style: Theme.of(context).textTheme.headline1),
          const SizedBox(height: 40),
          size.shortestSide < 600
              ? Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ColorButton(
                          'Light 1',
                          theme: Themes.lightTheme1,
                          isTab: false,
                          onTap: () => changeTheme(Themes.lightTheme1, 'Light1', themeNotifier),
                        ),
                        ColorButton(
                          'Light 2',
                          theme: Themes.lightTheme2,
                          isTab: false,
                          onTap: () => changeTheme(Themes.lightTheme2, 'Light2', themeNotifier),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ColorButton(
                          'Dark 1',
                          theme: Themes.darkTheme1,
                          isTab: false,
                          onTap: () => changeTheme(Themes.darkTheme1, 'Dark1', themeNotifier),
                        ),
                        ColorButton(
                          'Dark 2',
                          theme: Themes.darkTheme2,
                          isTab: false,
                          onTap: () => changeTheme(Themes.darkTheme2, 'Dark2', themeNotifier),
                        ),
                      ],
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ColorButton(
                      'Light 1',
                      theme: Themes.lightTheme1,
                      isTab: true,
                      onTap: () => changeTheme(Themes.darkTheme2, 'Light1', themeNotifier),
                    ),
                    ColorButton(
                      'Light 2',
                      theme: Themes.lightTheme2,
                      isTab: true,
                      onTap: () => changeTheme(Themes.darkTheme2, 'Light2', themeNotifier),
                    ),
                    ColorButton(
                      'Dark 1',
                      theme: Themes.darkTheme1,
                      isTab: true,
                      onTap: () => changeTheme(Themes.darkTheme2, 'Dark1', themeNotifier),
                    ),
                    ColorButton(
                      'Dark 2',
                      theme: Themes.darkTheme2,
                      isTab: true,
                      onTap: () => changeTheme(Themes.darkTheme2, 'Dark2', themeNotifier),
                    ),
                  ],
                ),
          Spacer(),
          NeuButton(),
        ],
      ),
    );
  }

  void changeTheme(ThemeData theme, String name, ThemeNotifier themeNotifier) async {
    themeNotifier.setTheme(theme);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('THEME', name);
  }
}

import 'package:flutter/material.dart';

import '../constant.dart';
import '../module/home/home_screen.dart';

final ThemeData _kLightTheme = new ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.lightBlue,
);

final ThemeData _kDarkTheme = new ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.lightBlue
);

class App extends StatefulWidget {
  App({ Key key }) : super(key: key);

  @override
  AppState createState() => new AppState();
}

class AppState extends State<App> {
  bool _useLightTheme = true;

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
        title: kAppName,
        theme: _useLightTheme ? _kLightTheme : _kDarkTheme,
        home: new Home()
    );

  }
}

import 'package:flutter/material.dart';

import '../module/home/Home.dart';

final ThemeData _kLightTheme = new ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.lightBlue,
);

final ThemeData _kDarkTheme = new ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.lightBlue
);

class TotalRecipeApp extends StatefulWidget {
  TotalRecipeApp({ Key key }) : super(key: key);

  @override
  TotalRecipeAppState createState() => new TotalRecipeAppState();
}

class TotalRecipeAppState extends State<TotalRecipeApp> {
  bool _useLightTheme = true;

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
        title: 'Total Recipe',
        theme: _useLightTheme ? _kLightTheme : _kDarkTheme,
        home: new Home()
    );

  }
}

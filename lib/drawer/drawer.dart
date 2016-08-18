import 'package:flutter/material.dart';

import '../constant.dart';
import '../widget/text.dart';

class NavigationDrawer extends StatelessWidget {

  NavigationDrawer({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    var aboutTextStyle = themeData.textTheme.body2;
    var aboutLinkStyle = themeData.textTheme.body2.copyWith(color: themeData.accentColor);

    return new Drawer(
      child: new Block(
        children: <Widget>[
          new DrawerHeader(
            child: new Center(
              child: new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Image.asset('asstes/drawer_header.png')
              )
            )
          ),
          new AboutDrawerItem(
            applicationName: kAppName,
            applicationVersion: '0.0.1-20160818',
            applicationLegalese: '@ 2016 Fabiomsr',
            aboutBoxChildren: <Widget> [
              new Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: new RichText(
                  text: new TextSpan(
                    children: <TextSpan> [
                      new TextSpan(
                        style: aboutTextStyle,
                        text: """
$kAppName is a simple futter app

To see the source code for this app, please visit the """
                      ),
                      new LinkTextSpan(
                        style: aboutLinkStyle,
                        url: 'http://goo.gl/sOtPdV',
                        text: '$kAppName repo'
                      )
                    ]
                  )
                )
              )
            ]

          )
        ]
      )
    );

  }
}

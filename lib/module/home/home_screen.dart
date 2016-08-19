import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../drawer/drawer.dart';

class Home extends StatefulWidget{

  Home({ Key key }) : super(key: key);

  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(kAppName)
      ),
      drawer: new NavigationDrawer(),
      body: new Center(
        child: new Text('Home')
      )
    );
  }

}

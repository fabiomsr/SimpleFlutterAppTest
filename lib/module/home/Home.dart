import 'package:flutter/material.dart';

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
        title: new Text('Simple Flutter App')
      ),
      body: new Center(
        child: new Text('Home')
      )
    );
  }

}

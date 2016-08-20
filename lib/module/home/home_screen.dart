import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../drawer/drawer.dart';
import '../../model/book.dart';
import 'home_presenter.dart';

class Home extends StatefulWidget{

  Home({ Key key }) : super(key: key);

  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> implements HomeViewContract{

  HomePresenter _homePresenter;

  @override
  void initState() {
    super.initState();

    _homePresenter = new HomePresenter(this);
  }

  void onLoadBookComplete(Set<Book> books){
    print("Home load books complete, book count: ${books.length}");
  }

  void onLoadBookError(){
    print("Home load books error :(");
  }

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

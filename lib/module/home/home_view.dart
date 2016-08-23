import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../drawer/drawer.dart';
import '../../strings.dart';
import '../book/list/books_view.dart';

enum HomeTab { books, favorites }

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var strings = AppStrings.of(context);

    return new TabBarSelection<HomeTab>(
      values: <HomeTab>[HomeTab.books, HomeTab.favorites],
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text(strings.library()),
          bottom: new TabBar(
            labels: <HomeTab, TabLabel>{
              HomeTab.books: new TabLabel(text: strings.tabBooks()),
              HomeTab.favorites: new TabLabel(text: strings.tabFavorites())
            }
          )
        ),
        drawer: new NavigationDrawer(),
        body: new TabBarView<HomeTab>(
          children: <BookList>[new BookList(), new FavoriteBooks()]
        )
      )
    );
  }

}

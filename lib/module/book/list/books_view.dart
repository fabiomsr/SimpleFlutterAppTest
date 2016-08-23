import 'package:flutter/material.dart';

import '../../../app/base/base_view.dart';
import '../../../domain/book.dart';
import '../../../app/base/base_presenter.dart';
import 'books_presenter.dart';


class BookList extends StatefulWidget{
  BookList({ Key key }) : super(key: key);

  @override
  _BookListState createState() => new _BookListState(new BooksPresenter());
}


class FavoriteBooks extends BookList{
  FavoriteBooks( { Key key }) : super(key: key);

  @override
  _BookListState createState() => new _BookListState(new FavoriteBooksPresenter());
}


class _BookListState extends ListState<Book, BookList> {

  ListPresenter _listPresenter;

  _BookListState(this._listPresenter){
    _listPresenter.attachView(this);
  }

  @override
  void initState() {
    super.initState();
    _listPresenter.loadItems();
  }

  @override
  Widget build(BuildContext context) {
    return new ScrollableList(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      itemExtent: 100.0,
      children: <Text>[new Text("One"), new Text("Two")]
    );
  }

}

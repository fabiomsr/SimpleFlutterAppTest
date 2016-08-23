import 'package:intl/intl.dart';
import 'package:flutter/widgets.dart';

class AppStrings extends LocaleQueryData {
  static AppStrings of(BuildContext context) {
    return LocaleQuery.of(context);
  }

  static final AppStrings _singleton = new AppStrings._internal();

  factory AppStrings() {
    return _singleton;
  }

  AppStrings._internal();

  String library() => Intl.message(
      'LIBRARY',
      name: 'library',
      desc: 'Label for the library screen'
  );

  String tabBooks() => Intl.message(
      'BOOKS',
      name: 'tabBooks',
      desc: 'Label for the Books tab'
  );

  String tabFavorites() => Intl.message(
      'FAVORITES',
      name: 'tabFavorites',
      desc: 'Label for the Favorites tab'
  );

}

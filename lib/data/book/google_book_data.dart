import 'dart:async';
import 'package:flutter/http.dart' as http;

import 'book_data.dart';

class GoogleBookRepository implements BookRepository{

  static const kGoogleBooksUrl = 'https://www.googleapis.com/books/v1/volumes';

  Future<List<BookDTO>> search( [String newSearch = "%2B"] ){
    return http.get("$kGoogleBooksUrl?q=$newSearch")
        .then((http.Response response) {
          String json = response.body;

          return new List<BookDTO>();
      });
  }

}

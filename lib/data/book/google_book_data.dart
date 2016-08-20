import 'dart:async';
import 'dart:convert';
import 'package:flutter/http.dart' as http;

import 'book_data.dart';

class GoogleBookRepository implements BookRepository{

  static const _kGoogleBooksUrl = 'https://www.googleapis.com/books/v1/volumes';
  final JsonDecoder _decoder = new JsonDecoder();

  Future<List<BookDTO>> search( [String newSearch = "%2B"] ){
    return http.get("$_kGoogleBooksUrl?q=$newSearch")
        .then((http.Response response) {
          final String jsonBody = response.body;
          final statusCode = response.statusCode;

          if(jsonBody == null){
            // TODO: Throw Error
          }

          if(statusCode < 200 || statusCode >= 300) {
            // TODO: Throw Error
          }

          final booksContainer = _decoder.convert(jsonBody);
          final List bookItems  = booksContainer['items'];

          return bookItems.map( (raw) => new BookDTO.fromMap(raw) )
                          .toList();
      });
  }

}

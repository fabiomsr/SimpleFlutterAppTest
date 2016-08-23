import 'dart:async';
import 'dart:convert';
import 'package:flutter/http.dart' as http;

import 'book_data.dart';
import '../exceptions.dart';

class GoogleBookRepository implements BookRepository{

  static const _kGoogleBooksUrl = 'https://www.googleapis.com/books/v1/volumes';
  final JsonDecoder _decoder = new JsonDecoder();

  Future<List<BookDTO>> search( [String newSearch = "%2B"] ){
    return http.get("$_kGoogleBooksUrl?q=$newSearch", headers: {"Cache-Control": "max-age=300"})
        .then((http.Response response) {
          final String jsonBody = response.body;
          final statusCode = response.statusCode;

          if(statusCode < 200 || statusCode >= 300 || jsonBody == null) {
            throw new FetchDataException("Error while getting books [StatusCode:$statusCode, Error:${response.error}]");
          }

          final booksContainer = _decoder.convert(jsonBody);
          final List bookItems  = booksContainer['items'];

          return bookItems.map( (raw) => new BookDTO.fromMap(raw) )
                         .toList();
      });
  }

}

import 'dart:async';

import 'book_data.dart';

class MockBookRepository implements BookRepository {

  Future<List<BookDTO>> search( [String newSearch] ) {
    return new Future.value(new List<BookDTO>());
  }

}

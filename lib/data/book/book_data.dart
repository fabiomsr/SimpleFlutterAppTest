
import 'dart:async';

class BookDTO {}

abstract class BookRepository {
  Future<List<BookDTO>> search([String newSearch]);
}
 

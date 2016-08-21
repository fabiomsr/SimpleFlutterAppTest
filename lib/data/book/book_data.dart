
import 'dart:async';

class BookDTO {
  String id;
  String title;
  String publishedDate;
  String language;
  int pageCount;
  List<String> authors;
  List<String> categories;

  BookDTO(this.id, this.title);

  BookDTO.fromMap(Map map) {
    id = map['id'];

    var volumeInfo = map['volumeInfo'];
    if(volumeInfo != null) {
      title = volumeInfo['title'];
      publishedDate = volumeInfo['publishedDate'];
      language = volumeInfo['language'];
      pageCount = volumeInfo['pageCount'];
      authors = volumeInfo['authors'];
      categories = volumeInfo['categories'];
    }
  }
}

abstract class BookRepository {
  Future<List<BookDTO>> search([String newSearch]);
}

import 'mapper/mapper.dart';
import '../data/book/book_data.dart';

class Author {
  final String name;
  Author(this.name);
}

class Category {
  final String name;
  Category(this.name);
}

class Book {
  final String id;
  final String title;
  final String publishedDate;
  final String language;
  final int pageCount;
  final Set<Author> authors;
  final Set<Category> categories;

  Book(this.id, this.title, this.publishedDate, this.language, this.pageCount, this.authors, this.categories);

  int get hashCode {
     int result = 17;
     result = 37 * result + id.hashCode;
     result = 37 * result + title.hashCode;
     result = 37 * result + publishedDate.hashCode;
     result = 37 * result + pageCount.hashCode;
     return result;
   }

   bool operator ==(other) {
     if (other is! Book) return false;
     return other.id == id;
   }

  String toString(){
    return '{ id:$id, title:$title }';
  }

}


class BookMapper extends Mapper<BookDTO, Book> {

    Book toData(BookDTO bookDTO){
      if(bookDTO.id == null || bookDTO.title == null){
        return null;
      }

      final id = bookDTO.id;
      final title = bookDTO.title;
      final publishedDate = bookDTO.publishedDate != null ? bookDTO.publishedDate : '';
      final language = bookDTO.language != null ? bookDTO.language : '';
      final pageCount = bookDTO.pageCount != null ? bookDTO.pageCount : 0;

      var authors = new Set<Author>();
      var categories = new Set<Category>();

      if(bookDTO.authors != null){
        authors = bookDTO.authors.map((name) => new Author(name))
                      .toSet();
      }

      if(bookDTO.categories != null){
        categories = bookDTO.categories.map((category) => new Category(category))
                      .toSet();
      }

      return new Book(id, title, publishedDate, language, pageCount,
                      authors, categories);
    }

    BookDTO toModel(Book book){ return null;}
}

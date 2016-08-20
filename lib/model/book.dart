import 'mapper/mapper.dart';
import '../data/book/book_data.dart';

class Author {
  final String name;
  Author(this.name);
}

class Category {
  final String categorie;
  Category(this.categorie);
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
}


class BookMapper extends Mapper<BookDTO, Book> {

    Book toModel(BookDTO bookDto){
      // TODO: Convert DTO to model
      return new Book("","","","",0, new Set<Author>(), new Set<Category>());
    }

    BookDTO toData(Book book){ return null;}

}

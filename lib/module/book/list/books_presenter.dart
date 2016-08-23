import 'dart:async';
import '../../../injection/dependency_injection.dart';
import '../../../domain/book.dart';
import '../../../data/book/book_data.dart';
import '../../../app/base/base_presenter.dart';

class BooksPresenter extends ListPresenter<BookDTO, Book>{
  final BookRepository _bookRepository;

  BooksPresenter() :
                _bookRepository = new Injector().bookRepository,
                super(new BookMapper());

  Future<List<BookDTO>> onLoadItems(){
    return _bookRepository.search();
  }
}


class FavoriteBooksPresenter extends ListPresenter<BookDTO, Book>{

  FavoriteBooksPresenter() : super(new BookMapper()) ;

  Future<List<BookDTO>> onLoadItems(){
    return new Future.value(new List<BookDTO>());
  }

}

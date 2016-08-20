
import '../../injection/dependency_injection.dart';
import '../../model/book.dart';
import '../../data/book/book_data.dart';

abstract class HomeViewContract{
  void onLoadBookComplete(Set<Book> books);
  void onLoadBookError();
}

class HomePresenter {
  final HomeViewContract _view;
  final BookRepository _bookRepository;
  final BookMapper _bookMapper;

  HomePresenter(this._view) :
                _bookRepository = new Injector().bookRepository,
                _bookMapper = new BookMapper() {
    loadBooks();
  }

  void loadBooks() {
    _bookRepository.search()
                   .then((bookDTOs) => bookDTOs.map((bookDTO) =>
                                               _bookMapper.toModel(bookDTO))
                                       .toSet())
                   .then((books) => _view.onLoadBookComplete(books))
                   .catchError((onError) => _view.onLoadBookError());
  }

}

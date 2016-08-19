
import '../../injection/dependency_injection.dart';
import '../../data/book/book_data.dart';

class HomePresenter {

  final BookRepository _bookRepository = new Injector().bookRepository;

  void loadBooks() {
    _bookRepository.search()
                    .then();
  }

}

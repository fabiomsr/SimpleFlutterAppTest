
import '../data/book/book_data.dart';
import '../data/book/google_book_data.dart';
import '../data/book/mock_book_data.dart';

enum Flavor {
  MOCK,
  PRO
}

/// Simple DI
class Injector {
  static final Injector _singleton = new Injector._internal();
  static Flavor _flavor;

  static void configure(Flavor flavor) {
    _flavor = flavor;
  }

  factory Injector() {
    return _singleton;
  }

  Injector._internal();

  BookRepository get bookRepository {
    switch(_flavor) {
      case Flavor.MOCK: return new MockBookRepository();
      default: // Flavor.PRO:
       return new GoogleBookRepository();
    }
  }
}

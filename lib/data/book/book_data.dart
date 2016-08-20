
import 'dart:async';
import 'dart:convert';

class BookDTO {
  // final String id;
  // final String title;
  // final String publishedDate;
  // final String language;
  // final int pageCount;
  // final List<String> authors;
  // final List<String> categories;
  //


  BookDTO.fromMap(Map map){

    //TODO: Create BookDTO
  }
}

abstract class BookRepository {
  Future<List<BookDTO>> search([String newSearch]);
}

/*
{
  "kind": "books#volumes",
  "totalItems": 577,
  "items": [
    {
      "kind": "books#volume",
      "id": "U53gAAAAMAAJ",
      "etag": "o1KbhZF6Jlc",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/U53gAAAAMAAJ",
      "volumeInfo": {
        "title": "Periodic solutions of x ̋+ cx ́+ g(x)",
        "authors": [
          "Warren Simms Loud"
        ],
        "publishedDate": "1959",
        "industryIdentifiers": [
          {
            "type": "OTHER",
            "identifier": "PSU:000004246459"
          }
        ],
        "readingModes": {
          "text": false,
          "image": false
        },
        "pageCount": 58,
        "printType": "BOOK",
        "categories": [
          "Differential equations"
        ],
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": false,
        "contentVersion": "preview-1.0.0",
        "language": "en",
        "previewLink": "http://books.google.es/books?id=U53gAAAAMAAJ&dq=%2B&hl=&cd=1&source=gbs_api",
        "infoLink": "http://books.google.es/books?id=U53gAAAAMAAJ&dq=%2B&hl=&source=gbs_api",
        "canonicalVolumeLink": "http://books.google.es/books/about/Periodic_solutions_of_x_%CC%8B+_cx_%CC%81+_g_x.html?hl=&id=U53gAAAAMAAJ"
      },
      "saleInfo": {
        "country": "ES",
        "saleability": "NOT_FOR_SALE",
        "isEbook": false
      },
      "accessInfo": {
        "country": "ES",
        "viewability": "NO_PAGES",
        "embeddable": false,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {
          "isAvailable": false
        },
        "pdf": {
          "isAvailable": false
        },
        "webReaderLink": "http://books.google.es/books/reader?id=U53gAAAAMAAJ&hl=&printsec=frontcover&output=reader&source=gbs_api",
        "accessViewStatus": "NONE",
        "quoteSharingAllowed": false
      }
    }
    */

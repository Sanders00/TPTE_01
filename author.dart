import 'book.dart';

class Author {
  String name;
  int birthdayYear;
  List<Book> booksWritten = List.empty(growable: true);

  addBookWritten(Book book) {
    booksWritten.add(book);
  }

  Author({required this.name, required this.birthdayYear});
}
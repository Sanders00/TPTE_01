import 'book.dart';

class User {
  String name;
  String address;
  List<Book> booksBorrowed = [];

  User(this.address, this.name);

  borrowBook(Book book) {
    if (!book.isBorrowed) {
      booksBorrowed.add(book);
    }
    book.borrowBook();
  }

  returnBook(Book book) {
    if (book.isBorrowed) {
      booksBorrowed.remove(book);
    }
    book.returnBook();
  }
}

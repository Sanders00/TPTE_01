void main() {
  Author author1 = Author("samuel", 2000);
  Book(title: 'livro1', author: author1, year: 2005);
  author1.booksWritten.forEach((element) {
    print(element.title);
  });
}

class Book {
  String title;
  Author author;
  int year;
  bool isBorrowed = false;

  Book._internal(
    this.title,
    this.author,
    this.year,
  );

  factory Book(
      {required String title, required Author author, required int year}) {
    var book = Book._internal(title, author, year);
    author.addBookWritten(book);
    return book;
  }
}

class Author {
  String name;
  int birthdayYear;
  List<Book> booksWritten = List.empty(growable: true);

  addBookWritten(Book book) {
    booksWritten.add(book);
  }

  Author(this.name, this.birthdayYear);
}

class User {
  String name;
  String address;
  List<Book> booksBorrowed;
  User(this.address, this.booksBorrowed, this.name);
}

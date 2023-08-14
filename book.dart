import 'author.dart';

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

  borrowBook(){
    if(!isBorrowed){
      isBorrowed = true;
      print('Livro $title foi emprestado com sucesso!');
    }else{
      print("Livro $title já está emprestado!");
    }
  }

  returnBook(){
    if(isBorrowed){
      isBorrowed = false;
      print('Livro $title foi devolvido com sucesso!');
    }else{
      print("Livro $title já foi devolvido!");
    }
  }

}
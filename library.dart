import 'dart:io';

import 'author.dart';
import 'book.dart';
import 'user.dart';

class Library {
  List<User> users = [];
  List<Book> books = [];
  List<Author> authors = [];

  registerBook() {
    try {
      print("Insira o titulo do livro: ");
      var title = stdin.readLineSync()!;
      print("Insira o nome do autor: ");
      var name = stdin.readLineSync()!;
      var author = authors.singleWhere((element) => element.name == name);
      print("Insira o ano de publicação: ");
      var year = int.parse(stdin.readLineSync()!);
      var book = Book(title: title, author: author, year: year);
      books.add(book);
      print('Livro ${book.title} cadastrado com sucesso!');
    } catch (e) {
      print('Error: $e');
    }
  }

  registerUser() {
    try {
      print("Insira o nome do usuário: ");
      var name = stdin.readLineSync()!;
      print("Insira o endereço: ");
      var address = stdin.readLineSync()!;
      var user = User(address, name);
      users.add(user);
      print('Usuario ${user.name} cadastrado com sucesso!');
    } catch (e) {
      print('Error: $e');
    }
  }

  registerAuthor() {
    try {
      print("Insira o nome do autor: ");
      var name = stdin.readLineSync()!;
      print("Insira a data de nascimento: ");
      var birthdayYear = int.parse(stdin.readLineSync()!);
      var author = Author(name: name, birthdayYear: birthdayYear);
      authors.add(author);
      print('Autor ${author.name} cadastrado com sucesso!');
    } catch (e) {
      print('Error: $e');
    }
  }

  listAllBooks() {
    print('\n------ Todos Livros ------');
    books.forEach((element) {
      print(
          "|| Titulo: ${element.title} -/- Disponibilidade: ${element.isBorrowed ? 'Indisponivel' : 'Disponivel'} ||");
    });
  }

  listBorrowedBooks() {
    print('\n------ Livros Disponiveis ------');
    books.forEach((element) {
      if (!element.isBorrowed) {
        print(element.title);
      }
    });
  }

  listBooksbyAuthor() {
    try {
      print("Insira o nome do autor: ");
      var name = stdin.readLineSync()!;
      var author = authors.singleWhere((element) => element.name == name);
      print('\n------ Livros por ${author.name} ------');
      author.booksWritten.forEach((element) {
        print(
            "|| Titulo: ${element.title} -/- Disponibilidade: ${element.isBorrowed ? 'Indisponivel' : 'Disponivel'} ||");
      });
    } catch (e) {
      print('Erro: $e');
    }
  }

  listUsers() {
    users.forEach((element) {
      print(element.name);
    });
  }

  borrowBook() {
    try {
      print("Insira o nome do usuário: ");
      var name = stdin.readLineSync()!;
      var user = users.singleWhere((element) => element.name == name);
      print("Insira o titulo do livro que deseja emprestar: ");
      var title = stdin.readLineSync()!;
      var book = books.singleWhere((element) => element.title == title);
      user.borrowBook(book);
    } catch (e) {
      print('Erro: $e');
    }
    
  }

  returnBook(){
    try {
      print("Insira o nome do usuário: ");
      var name = stdin.readLineSync()!;
      var user = users.singleWhere((element) => element.name == name);
      print("Insira o titulo do livro que deseja devolver: ");
      var title = stdin.readLineSync()!;
      var book = books.singleWhere((element) => element.title == title);
      user.returnBook(book);
    } catch (e) {
      print('Erro: $e');
    }
  }
}

import 'dart:io';
import 'library.dart';

void main() {
  var library = Library();

  print('\nBem-vindo à Biblioteca!');

  while (true) {
    print('\nOpções:');
    print('1 - Listar todos os livros');
    print('2 - Listar livros disponiveis');
    print('3 - Listar livros por autor');

    print('4 - Registrar usuários');
    print('5 - Registrar livro');
    print('6 - Registrar autor');

    print('7 - Emprestar livro');
    print('8 - Devolver livro');

    print('9 - Sair');
    //------------------------------------
    var opcao = int.parse(stdin.readLineSync()!);

    if (opcao == 1) {
      library.listAllBooks();
    } else if (opcao == 2) {
      library.listBorrowedBooks();
    } else if (opcao == 3) {
      library.listBooksbyAuthor();
    } else if (opcao == 4) {
      library.registerUser();
    } else if (opcao == 5) {
      library.registerBook();
    } else if (opcao == 6) {
      library.registerAuthor();
    } else if (opcao == 7) {
      library.borrowBook();
    } else if (opcao == 8) {
      library.returnBook();
    } else if (opcao == 9) {
      print('Até logo!');
      break;
    } else {
      print('Opção inválida. Tente novamente.');
    }
  }
}

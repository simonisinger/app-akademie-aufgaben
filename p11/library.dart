import 'ebook.dart';
import 'library_user.dart';

class Library {
  final List<LibraryUser> users;
  final List<EBook> ebooks;

  Library(this.users, this.ebooks);
}
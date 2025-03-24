import 'dart:typed_data';

import '../p11/ebook.dart';
import '../p11/library_user.dart';
import 'database_repository.dart';

final class MockRepository implements DatabaseRepository {
  List<EBook> _ebooks = [];
  List<Task> _tasks = [];
  List<LibraryUser> _libraryUsers = [];
  List<Series> _series = [];
  
  @override
  EBook addEBook(List<Uint8List> ebookData) {
    EBook ebook = EBook('dummy', 'de', 'dummy series', '1970-01-01');
    _ebooks.add(ebook);
    return ebook;
  }

  @override
  bool cancelTask(Task task) {
    _tasks.remove(task);
    return true;
  }

  @override
  LibraryUser createUser(String username, String password) {
    return LibraryUser(1, username, password)
  }

  @override
  bool deleteEBook(EBook ebook) {
    _ebooks.remove(ebook);
    return true;
  }

  @override
  bool deleteSeries(Series series) {
    _series.remove(series);
    return true;
  }

  @override
  bool deleteUser(user) {
    _libraryUsers.remove(user);
    return true;
  }

  @override
  EBook editEBook(EBook ebook, {required String name, series}) {
    String locale = ebook.locale;
    String releaseDate = ebook.releaseDate;
    EBook newEbook = EBook(name, locale, series, releaseDate);
    _ebooks.remove(ebook);
    _ebooks.add(newEbook);
    return newEbook;
  }

  @override
  LibraryUser editUser(LibraryUser user, {String? username, String? password}) {
    int id = user.id;
    String name = user.userName;
    String apiKey = user.apiKey;
    if (username != null) {
      name = username;
    }

    if (password != null) {
      apiKey = password;
    }
    LibraryUser newUser = LibraryUser(id, name, apiKey);
    _libraryUsers.remove(user);
    return newUser;
  }

  @override
  List<EBook> getBooks() => _ebooks;

  @override
  List<dynamic> getSeries() => _series;

  @override
  List<dynamic> getTasks() => _tasks;

  @override
  List<LibraryUser> getUsers() => _libraryUsers;

}
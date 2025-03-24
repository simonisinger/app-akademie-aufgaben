import '../p11/ebook.dart';
import '../p11/library_user.dart';

abstract interface class DatabaseRepository {
  List<EBook> getBooks();
  List<LibraryUser> getUsers();
  List<Task> getTasks();
  List<Series> getSeries();

  EBook addEBook(List<Uint8List> ebookData);
  EBook editEBook(EBook ebook, {String name, Series series});
  bool deleteEBook(EBook ebook);
  bool deleteSeries(Series series);
  bool cancelTask(Task task);
  LibraryUser createUser(String username, String password);
  LibraryUser editUser(LibraryUser user, {String username, String password});
  bool deleteUser(User user);
}
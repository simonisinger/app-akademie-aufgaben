void main() {
  bool isLoggedIn = true;
  bool isBanned = false;
  bool isSubscribed = true;
  int age = 18;


  String message;
  if (!isLoggedIn) {
    message = 'Bitte logge dich ein';
  } else if (isBanned) {
    message = 'Dein Account wurde gesperrt';
  } else if (!isSubscribed) {
    message = 'Bitte abbonniere';
  } else if (age < 18) {
    message = 'Du bist zu jung';
  } else {
    message = 'Willkommen';
  }
  print(message);
}

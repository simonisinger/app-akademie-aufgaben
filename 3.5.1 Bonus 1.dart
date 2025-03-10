void main() {
  String word = "rentner";
  bool isPalindrom = true;
  // Hier deine for-Schleife:

  for (int i = 0; i < word.length; i++) {
    if (word[i] != word[(word.length-1) - i]) {
      isPalindrom = false;
      break;
    }
  }

  if (isPalindrom) {
    print('$word ist ein Palindrom');
  } else {
    print('$word ist kein Palindrom');
  }
}
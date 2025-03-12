void main() {
  _triplePrint('lorem ipsum');
  _triplePrint('random text');
  _triplePrint('keine idee für nen weiteren zufälligen text');
  _triplePrint('alalalalala');
}

void _triplePrint(String text) {
  for (int i = 0; i < 3; i++) {
    print(text);
  }
}
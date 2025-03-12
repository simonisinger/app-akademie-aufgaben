void main() {
  for (int i = 0; i < 10000000000; i *= i) {
    printNumber(i);
  }
}

void printNumber(int number) {
  print(number);
}
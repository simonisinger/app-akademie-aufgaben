void main() {
  for (int i = 1; i <= 100; i++) {
    switch (i) {
      case < 10:
        print('Kleine Zahl: $i');
      case < 60:
        print('Mittlere Zahl: $i');
      default:
        print('Große Zahl: $i');
    }
  }
}
// Implementiere folgende Funktionen:
import 'dart:math';

void findAndPrintExtreme(List<int> numbers) {
  // Findet und gibt kleinste und größte Zahl aus
  // Zeigt auch deren Position in der Liste
  int smallest = numbers.first;
  int greatest = numbers.first;
  for (int number in numbers) {
    if (number > greatest) {
      greatest = number;
    }

    if (number < smallest) {
      smallest = number;
    }
  }
  print('Kleinste: $smallest, Größte: $greatest');
}

void printNumberTypes(List<int> numbers) {
  // Zählt und gibt aus:
  int unevenCount = 0;
  int evenCount = 0;
  for (int number in numbers) {
    if (number % 2 == 0) {
      evenCount++;
    } else {
      unevenCount++;
    }
  }
  print('Ungerade: $unevenCount, Gerade: $evenCount');
}

void printDistribution(List<int> numbers) {
  // Gibt eine einfache Häufigkeitsverteilung aus
  // z.B. wie oft kommt jede Zahl vor
  Map<int, int> intCount = {};
  for (int number in numbers) {
    if (!intCount.containsKey(number)) {
      intCount[number] = 0;
    }
    intCount[number] = intCount[number]! + 1;
  }
  print(intCount);
}

// Hauptfunktion:
void analyzeNumbers(List<int> numbers) {
  findAndPrintExtreme(numbers);
  printNumberTypes(numbers);
  printDistribution(numbers);
}

void main() {
  List<int> numbers = [];
  for (int i = 0; i < 1000; i++) {
    numbers.add(Random.secure().nextInt(20));
  }
  analyzeNumbers(numbers);
}
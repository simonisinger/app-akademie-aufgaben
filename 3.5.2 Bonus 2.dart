// Erstelle zwei Funktionen:
void printGrades(List<int> grades) {
  int counter = 1;
  print(grades.map((int grade) => 'Note ${counter++}: $grade').join(', '));
}

void calculateAndPrintAverage(List<int> grades) {
  print('Der Durchschnitt ist ${grades.reduce((a,b) => a + b) / grades.length}');
}

// Hauptfunktion:
void analyzeGrades(List<int> grades) {
  printGrades(grades);
  calculateAndPrintAverage(grades);
}

void main() {
  analyzeGrades([2,1,3]);
}
void main() {
  // ist es nicht in der aufgabe eher sinnvoll das geschlecht mit einem enum zu machen?
  // damit spart man sich den default case
  String sex = 'male';
  int age = 23;
  switch (sex) {
    case 'male':
      switch (age) {
        case >= 20 && < 25:
          // in der original aufgabe stand das mit meter
          // ich glaube cm passt besser, solange wir hier nicht von hochhäusern reden
          print("Im Schnitt 181,4cm");
        case >= 25 && < 30:
          print("Im Schnitt 181,3cm");
        case >= 30 && < 35:
          print("Im Schnitt 180,4cm");
      }
    case 'female':
      switch (age) {
        case >= 20 && < 25:
          print("Im Schnitt 167,5cm");
        case >= 25 && < 30:
          print("Im Schnitt 167,3cm");
        case >= 30 && < 35:
          print("Im Schnitt 167,2cm");
      }
  }
}
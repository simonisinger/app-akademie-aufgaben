int stringLength(String string) => string.length;

void main() {
  List<String> strings = ['test', 'test1234', 'test1233455456'];
  for (String string in strings) {
    int result = stringLength(string);
    print(result);
  }
}
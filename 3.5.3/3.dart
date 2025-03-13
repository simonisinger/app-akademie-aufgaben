// Vokale wären absolut overkill dafür, daher wörter weil viele wörte sind ja eigene vokale
int getWordCount(String string) => string.split(' ').length;

void main() {
  List<String> strings = ['tes  test', 'test1234 dssf sdfdf', 'test1233455456 dsfs sdfsd dsfds'];
  for (String string in strings) {
    int result = getWordCount(string);
    print(result);
  }
}
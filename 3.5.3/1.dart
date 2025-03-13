int sumThreeNumbers(int first, int second, int third) => first + second + third;

void main() {
  for (int i = 1; 10 > i; i+=3) {
    int result = sumThreeNumbers(i, i+1, i+2);
    print(result);
  }
}
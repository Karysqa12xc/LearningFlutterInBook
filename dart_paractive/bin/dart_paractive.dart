import 'dart:collection';
import 'dart:io';

bool checkEven(int value) => value % 2 == 0;
void main(List<String> arguments) {
  print(test());
  //* Gán hàm cho một biến
  bool Function(int) checker = checkEven;
  //* Anonymous function
  bool Function(int) isEven = (int value) => value % 2 == 0;
  print(isEven(19));
  final numbers = [2, 4, 6, 6, 10];
  numbers.forEach(showNumber);
}

//* Nếu không có kiểu trả về trong hàm thì dart sẽ mặc định
//* gán kiểu trả về là dynamic
test() {
  int i = 7;
  return i;
}

void test2([int? a, int? b]) {}
void showNumber(int value) => print(value);

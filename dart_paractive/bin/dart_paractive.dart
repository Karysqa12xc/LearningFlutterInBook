import 'dart:collection';

var numbers = [1, 2, 3];
List<int> list1 = [4, 5, 6];
List<String> list2 = ['Tin', 'Hoa', 'Phuong'];

int a = 10;
int b = 7;
int c = -10;
bool checked = false;
bool tested = false;

var check;
var name;
void main(List<String> arguments) {
  EspeciallySymbol();
  double? val = double.tryParse('12@.3x_'); // cách sử dụng tryParse()
  print('$val');
  var query = """
SELECT name, surname, age
FROM people
WHERE age >= 18
ORDER BY name DESC""";
  print(query);
  final name = "Alberto";
  print(name[0]);
  print(name[1]);
  var s = '''I am going to the second line''';
  print(s);
  // TODO: using the StringBuffer
  // var buffer = StringBuffer();
  // for (var i = 0; i < 900000; i++) {
  //   buffer.write("$i ");
  // }
  // var value = buffer.toString();
  // print(value);
}

void EspeciallySymbol() {
  name = (check == null) ? 'Default' : check;
  print(name);
  name = check ?? 'null';
  print(name);
  List<int> numbers = [];
  // numbers.add(1);
  // numbers.add(2);
  // numbers.add(3);
  // numbers.add(4);
  numbers
    ..add(1)
    ..add(2)
    ..add(3);
  numbers.forEach((element) => print(element));
}

void OperatorBasicMethod() {
  print("Toan tu so hoc");
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a ~/ b); // Lay phan nguyen
  print(a % b); // Lay phan du

  //Lay tri tuyet doi
  print(c.abs());

  // print(++a);
  print(a++);
  //Toan tu logic
  print('Toan tu so sanh');
  print(a > b);
  print(a < b);
  print(a == b);
  print(a != b);
  print(a >= b);
  print(b <= a);
  // Toan tu kiem tra kieu
  print('Toan tu kiem tra kieu');
  // ignore: unnecessary_type_check
  print(a is int);
  print(a is! String);
  print('Toan tu logic');
  print(!checked);
  print(checked && tested);
  print(checked || tested);
  print('Toan tu bitwise');
  print(a & b);
}

//* 1. Duyet tung phan tu roi add tuong ung
void PartrolElementToAdd() {
  Set<String> set1 = {};
  list1.forEach((element) {
    set1.add(element.toString());
  });

  print(set1.length);
  set1.forEach((element) {
    print(element.runtimeType);
    print(element);
  });
}

//* 2. Add all phần tử
void AddAllElement() {
  Set<String> set2 = {};
  set2.addAll(list2);
  set2.forEach((element) {
    print(element);
  });
}

//* 3. Su dung .from
void UseFromMethod() {
  Set<dynamic> set3 = Set.from(numbers);
  set3.forEach((element) {
    print(element.runtimeType);
    print(element);
  });
  var q = Queue.from(numbers);
  q.forEach((element) {
    print(element);
  });
}

//* 4. Su dung .map
void useMapMethod() {
  List<String> strNumbers = numbers.map((e) {
    return '$e';
  }).toList();
  strNumbers.forEach((element) {
    print(element.runtimeType);
    print(element);
  });
}

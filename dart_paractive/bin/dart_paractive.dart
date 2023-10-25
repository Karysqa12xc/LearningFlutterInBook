import 'compiles.dart';
import 'example.dart';
import 'my_class.dart';
import 'fraction.dart';
import 'person.dart';

class Hello {
  String str1 = "";
  String _str2 = "";
}

void main(List<String> arguments) {
  // Person p = Person(name: "Hung", surname: "Hoang");
  // p.name = "Tan";
  // p.surname = "Lo";
  // p
  //   ..name = "one"
  //   ..surname = "two";

  Test test = Test();
  test.val1 = "one";
  test.val2 = "two";

  test
    ..val1 = "one"
    ..val2 = "two";

  Test()
    ..randomNumber()
    ..randomNumber()
    ..randomNumber();

  final obj = Hello();
  // ignore: unused_local_variable
  var name = obj.str1;
  // ignore: unused_local_variable
  var real = obj._str2;

  // ignore: unused_local_variable
  final fraction1 = MyFraction(0, 1);

  // ignore: unused_local_variable
  final fraction2 = MyFraction.zero();

  final Name = Example.name;
  final text = Example.test();

  final example1 = const Compiles(1, 2);
  final exmaple2 = Compiles(1, 2);
  final frac = MyFraction(1, 7);

  final num = frac.numerator;
  var den1 = frac.denominator;
  frac.denominator = 0;
  den1 = frac.denominator;

  final frac1 = MyFraction(2, 5);
  final frac2 = MyFraction(1, 3);

  final sum = frac1 + frac2;

  final ex = Example();
  final value = ex(1.0, 2.0);
  print("$value");

  // ignore: unnecessary_const
  const me = const Person(name: 'Nam', age: 20);
  final anotherMe = me.copyWith();
  final futureMe = me.copyWith(age: 25);

  print("$me");
  print("$anotherMe");
  print("$futureMe");
}

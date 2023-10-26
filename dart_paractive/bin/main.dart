import 'comparable.dart';
import 'factory_ex.dart';
import 'fraction.dart';
import 'inheritance_test.dart';

class RandomClass {}

class DoSomething {
  // ignore: deprecated_member_use
  static void doSomeThing(IntegerDivisionByZeroException exc) {}
}

void main(List<String> args) {
  try {
    final f = Fraction(1, 0);
    // ignore: deprecated_member_use
  } on IntegerDivisionByZeroException catch (exc) {
    DoSomething.doSomeThing(exc);
    print("Ouch! Division by zero!");
  } on FormatException {
    print('Invalid format!');
  } catch (e) {
    print('General error: $e');
  } finally {
    print('Always here');
  }
  A obj1 = A();
  A obj2 = B();

  print("${obj1.test(1)}");
  print("${obj2.test(1)}");

  final me = Human2('Nam', 'Hoang');
  me.printName();
  me.walk();
  final encrypt = EncryptionAlgo.AESEncryption();
  // var str = "2/5";
  // if (str.isFraction()) {
  //   final frac = str.toFraction();
  // }

  final ex1 = ExampleTwo(2);
  final ex2 = ExampleTwo(2);
  print(ex1 == ex2);
  throw RandomClass();
}

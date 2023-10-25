// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

// class Person {
//   //* Instance variables
//   String name;
//   String surname;
//   Person({
//     required this.name,
//     required this.surname, required int age,
//   });
// }

class Test {
  String val1 = "One";
  String val2 = "Two";

  int randomNumber() {
    print('Random');
    return Random().nextInt(10);
  }
}
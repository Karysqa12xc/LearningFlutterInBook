import 'dart:convert';

class A {
  double test(double a) => a * 0.5;
}

class B extends A {
  @override
  double test(double a) {
    final original = super.test(a);
    return original * 1.5;
  }
}

abstract class Fruit {}

class Apple extends Fruit {}

class Grape extends Fruit {}

class Banana extends Fruit {}

abstract class Mammal {
  void eat(covariant Fruit f);
}

class Human extends Mammal {
  void eat(Fruit f) => print("Fruit");
}

class Monkey extends Mammal {
  void eat(Banana f) => print('Banana');
}

class Example {
  int a;
  Example(this.a);
}

class SubExample extends Example {
  int b;
  SubExample(this.b) : super(b);
}

abstract class Example2 {
  final int _a;
  void method();
  const Example2(this._a);
  //* Abstract getter
  int get calculate;

  //* Abstract method
  int doSomething();
}

class SubExample2 extends Example2 {
  SubExample2(super.a);

  @override
  void method() {
    print("I'm not abstract!");
  }

  @override
  // TODO: implement calculate
  int get calculate => super._a * 2;

  @override
  int doSomething() {
    return 1;
  }
}

abstract class MyInterface {
  void methodOne();
  void methodTwo();
}

abstract class OneInterface {
  void one();
}

abstract class TwoInterface {
  void two();
}

class Example3 implements MyInterface, OneInterface, TwoInterface {
  @override
  void methodOne() {
    // TODO: implement methodOne
  }

  @override
  void methodTwo() {
    // TODO: implement methodTwo
  }

  @override
  void one() {
    // TODO: implement one
  }

  @override
  void two() {
    // TODO: implement two
  }
}

abstract class Reader {
  bool fileExists(String path) {
    return true;
  }

  double size(double file) {
    return 0.0;
  }

  String readContents();
}

class PDFreader extends Reader {
  @override
  String readContents() {
    // TODO: implement readContents
    throw UnimplementedError();
  }
}

class DocxReader extends Reader {
  @override
  String readContents() {
    // TODO: implement readContents
    throw UnimplementedError();
  }
}

class TxtReader extends Reader {
  @override
  String readContents() {
    // TODO: implement readContents
    throw UnimplementedError();
  }
}

abstract class Sorter {
  void sort();
  String averageComplexity();
}

class MergeSort implements Sorter {
  @override
  void sort() {
    // TODO: implement sort
  }

  @override
  String averageComplexity() => "n*log(n)";
}

class InsertionSort implements Sorter {
  @override
  String averageComplexity() => "n^2";

  @override
  void sort() {
    var arr = [];
    int current;
    // TODO: implement sort
    for (int i = 1; i < arr.length; i++) {
      current = i;
      for (int j = i - 1; j >= 0; j--) {
        if (arr[current] < arr[j]) {
          int tmp = arr[current];
          arr[current] = arr[j];
          arr[j] = tmp;
          current = j;
        }
      }
    }
  }
}

mixin Swimming {
  void swim() => print('Swimming');
  bool likesWater() => true;
}
mixin Walking {
  void walk() => print("Walking");
}
mixin Breathing{
  void bread(){

  }
}
mixin Coding on Human2{
  void code(){}
}
class Human2 with Walking {
  final String _name;
  final String _surname;

  Human2(this._name, this._surname);
  void printName() => "$_name, $_surname";
}

class Developer extends Human2 with Breathing, Coding {
  Developer(super.name, super.surname);
}

import 'super_class.dart';

class MySubclass extends SuperClass {
  @override
  void defineMethod() {
    print('In My Sub Class');
  }
}

class Something {
  final int value;
  const Something(this.value);
}
@Something(10)
class Test5 {}

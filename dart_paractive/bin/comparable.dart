// ignore_for_file: unnecessary_overrides

class ExampleTwo {
  int a;
  ExampleTwo(this.a);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is ExampleTwo) {
      final example = other;
      return runtimeType == example.runtimeType && a == example.a;
    } else {
      return false;
    }
  }
  // ignore: unnecessary_overrides
  @override
  int get hashCode => a.hashCode;
}

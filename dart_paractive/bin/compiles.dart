class Compiles {
  final int a;
  final int b;
  const Compiles(this.a, this.b);
}

class Test4 {
  const Test4();
}

const List<Test4> listConst = [Test4(), Test4()];
final List<Test4> listConst2 = [Test4(), Test4()];

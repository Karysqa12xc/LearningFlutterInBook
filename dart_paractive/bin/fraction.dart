class Fraction implements Comparable<Fraction> {
  int _numerator;
  int _denominator;
  // ignore: unused_field

  Fraction(this._numerator, this._denominator) {
    if (_denominator == 0) {
      // ignore: deprecated_member_use
      throw IntegerDivisionByZeroException();
    }
  }
  double toDouble() => _numerator / _denominator;
  static fromString(String s) {
    s.trim();
    s.split("/");
    Fraction(int.parse(s[0]), int.parse(s[1]));
  }

  @override
  int compareTo(Fraction other) {
    if (toDouble() < other.toDouble()) return -1;
    if (toDouble() > other.toDouble()) return 1;
    return 0;
  }
}

extension FractionExt on String {
  // ignore: unnecessary_this
  bool isFraction() => this.contains("/");
  Fraction toFraction() => Fraction.fromString(this);
}

class FractionDivisionByZero implements Exception {
  final String msg;
  const FractionDivisionByZero(this.msg);

  @override
  String toString() => msg;
}

class ExampleThree {
  int x;
  ExampleThree(this.x) : assert(x != 0);
}

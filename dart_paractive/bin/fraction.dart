// ignore_for_file: public_member_api_docs, sort_constructors_first
library super_duper_fraction;

class MyFraction {
  int _numerator;
  int _denominator;
  // ignore: unused_field
  late final double _rational;

  MyFraction(this._numerator, this._denominator) {
    _rational = _numerator / _denominator;
  }
  int get numerator => _numerator;
  int get denominator {
    return _denominator;
  }

  set denominator(int value) {
    if (value == 0) {
      _denominator = 1;
    } else {
      _denominator = value;
    }
  }

  MyFraction.zero()
      : _numerator = 0,
        _denominator = 1;
  MyFraction.oneHalf() : this(1, 2);

  MyFraction.whole(int val) : this(val, 1);

  MyFraction operator +(MyFraction other) => MyFraction(
      _numerator * other._denominator + _denominator * other._numerator,
      _denominator * other._denominator);
  MyFraction operator -(MyFraction other) => MyFraction(
      _numerator * other._denominator - _denominator * other._numerator,
      _denominator * other._denominator);
}

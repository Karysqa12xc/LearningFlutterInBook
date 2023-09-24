import 'dart:collection';

enum Fruits { Apple, Pear, Grapes, Banana, Orange }

void main(List<String> arguments) {
  Fruits liked = Fruits.Apple;
  var disliked = Fruits.Banana;

  print(liked.toString());
  print(disliked.toString());
  num? value = 5;
  int otherValue = value as int;
  print(otherValue);

  double? pi = 3.14;
  final round1 = pi.round();
  print(round1);
}

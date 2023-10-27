import 'dart:collection';

import 'generic_test.dart';

void main(List<String> args) {
  //* Generic
  final local1 = LocalCache<int>(1);
  final local2 = LocalCache<double>(2.5);
  final a = local1.printValue<String>("1");
  //* Collections
  //* List
  var intList = [2, 5, -8, 0, 1];
  var stringList = ["a", "Hello"];
  List<String> list = [];
  list.add("oops");

  List<int>? list1;

  var list2 = [-2, -1, 0, ...?list1];
  final list3 = const <int>[1, 3, 6, 7];

  const hasCoffee = true;

  final jobs = [
    "Welder",
    "Racer driver",
    "Journalist",
    if (hasCoffee) "Developer"
  ];

  final number = [0, 1, 2, for (var i = 3; i < 100; ++i) i];
  final growable = [];
  growable.length = 5;
  final growableTwo = List<int>.filled(3, 0, growable: true);
  growableTwo.addAll(list3);
  growableTwo.forEach((element) {
    print(element);
  });
  var ex = List<int>.generate(5, (int i) => i * i);
  //* Set
  print('-----------------');
  final keys = {1, 2, 3, 3, 4, 5};
  keys.forEach((element) {
    print(element);
  });
  Set<int> emptySet = {};
  final example = <int>{};
  example.addAll([5, 3, 7]);
  final set1 = <int>{};
  // ignore: prefer_collection_literals
  final set2 = LinkedHashSet<int>();
  //* Map
  print('-------------------');
  final m = <int, String>{0: "A", 1: "B", 2: "C"};
  final example1 = <int, String>{0: "A", 1: "B"};
  Map<int, int> m1 = Map<int, int>();
  // The key '0' is already present, "C" not added
  example1.putIfAbsent(0, () => "C");
  // The key '6' is not present, "C" successfully added
  example1.putIfAbsent(6, () => "C");

  example1[0] = "C";
  example1[6] = "C";
  //* LINQ FAKE
  final listLinq = List<int>.generate(20, (i) => i);

  final List<String> other = listLinq
      .where((int value) => value % 2 == 0)
      .map((int value) => value.toString())
      .toList();
  final listReduce = <int>[1, 2, 3, 4, 5];
  final sum = listReduce.reduce((int a, int b) => a + b);
  print(sum);
  final listFold = [1, 2, 3, 4, 5];
  final sum1 = listFold.fold(0, (int a, int b) => a + b);
  final sum2 = listFold.fold(5, (int a, int b) => a + b);
  print(sum1);
  print(sum2);
  final listString = ['hello', "Dart", "!"];
  final value1 =
      listString.fold(1, (int count, String item) => count + item.length);
  print(value1);
}

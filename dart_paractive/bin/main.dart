import 'dart:math';
import 'dart:io';
import 'async_test.dart';

void main(List<String> args) async {
  //* Future use async
  // try {
  //   final result = await processData(31, 2.5);
  //   print("$result");
  // } on Exception catch (e) {
  //   print(e.toString());
  // }
  //* Stream async
  // final stream = randomNumbersStream();
  // await for (var value in stream) {
  //   print(value);
  // }
  // print("Async stream!");
  // await for (var c in counterStream()) {
  //   print(c);
  // }
  //* Stream sync
  // final stream = randomNumberIterable();
  // for (var value in stream) {
  //   print(value);
  // }
  // print('Sync stream!');
  final stream = RandomStream().stream;
  await Future.delayed(const Duration(seconds: 2));
  final subscription = stream.listen((int random) {
    print(random);
  });
  await Future.delayed(const Duration(microseconds: 3200));
  subscription.cancel();
}

// Future<int> processData(int param1, double param2) {
//   var value = 0;
//   for (var i = 0; i < param1; ++i) {
//     for (var j = 0; j < param1 * param2; ++j) {
//       value++;
//       value = value * 2;
//     }
//   }
//   final res = httpGetRequest(value);
//   return Future<int>.value(res);
// }

// int httpGetRequest(int value) {
//   return value;
// }

Future<int> example() async => 3;

Stream<int> randomNumbersStream() async* {
  final random = Random();
  final stream = Stream.periodic(
      const Duration(seconds: 2), (count) => random.nextInt(10));
  for (var i = 0; i < 100; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield random.nextInt(50) + 1;
    yield random.nextInt(50) + 1;
    yield random.nextInt(50) + 1;
  }
}

Iterable<int> randomNumberIterable() sync* {
  final random = Random();

  for (var i = 0; i < 100; i++) {
    sleep(Duration(seconds: 1));
    yield random.nextInt(50) + 1;
  }
}

Stream<int> counterStream([int maxCount = 10000]) async* {
  final delay = const Duration(seconds: 1);
  var count = 0;
  while (true) {
    if (count == maxCount) {
      break;
    }
    await Future.delayed(delay);
    yield ++count;
  }
}

Stream<int> numberGenerator(bool even) async* {
  if (even) {
    yield 0;
    yield* evenNumbersUpToTen();
    yield 0;
  } else {
    yield -1;
    yield* oddNumbersUpSToTen();
    yield -1;
  }
}

Stream<int> oddNumbersUpSToTen() async* {}

Stream<int> evenNumbersUpToTen() async* {}






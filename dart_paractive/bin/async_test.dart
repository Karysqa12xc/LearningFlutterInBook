import 'dart:async';

import 'dart:math';

class RandomStream {
  final int maxValue;
  static final _random = Random();

  Timer? _timer;
  late int _currentCount;
  late StreamController<int> _controller;

  RandomStream({this.maxValue = 100}) {
    _currentCount = 0;
    _controller = StreamController<int>(
        onListen: _startStream,
        onResume: _startStream,
        onPause: _stopTimer,
        onCancel: _stopTimer);
  }
  Stream<int> get stream => _controller.stream;

  void _startStream() {
    _timer = Timer.periodic(const Duration(seconds: 1), _runStream);
    _currentCount = 0;
  }

  void _stopTimer() {
    _timer?.cancel();
    _controller.close();
  }

  void _runStream(Timer timer) {
    _currentCount++;
    _controller.add(_random.nextInt(maxValue));
    if (_currentCount == maxValue) _stopTimer();
  }
  
}


import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter();

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$Counter'),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: (){
            setState(() => _counter++);
          }),

      ],
    );
  }
}
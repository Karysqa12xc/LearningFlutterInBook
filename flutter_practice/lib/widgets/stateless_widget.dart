import 'package:flutter/material.dart';

class MyName extends StatelessWidget {
  final String name;
  const MyName({required this.name});

  @override
  Widget build(BuildContext context) => Text(name);
}

import 'package:flutter/material.dart';

class ThemeDataEx extends StatelessWidget {
  const ThemeDataEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Times New Roman",
        focusColor: Colors.white,
        primaryColor: Colors.green,
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({Key? key}) : super(key: key);
  String _logoName() {
    if (Platform.isIOS) {
      return "Welcome iOs user!";
    }
    return "Welcome Android user!";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test Multiple platfrom"),
        ),
        body: Center(child: Text(_logoName())),
      ),
    );
  }
}

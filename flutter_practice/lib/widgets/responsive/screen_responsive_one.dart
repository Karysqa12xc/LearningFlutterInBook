import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenResponsiveOne extends StatelessWidget {
  const ScreenResponsiveOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, id) {
                  return ListTile(
                    leading: const Icon(Icons.add),
                    title: Text("Item $id"),
                  );
                })));
  }
}

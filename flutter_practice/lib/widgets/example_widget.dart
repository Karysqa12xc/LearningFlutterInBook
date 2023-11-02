import 'package:flutter/material.dart';

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: ListView(
          children: const [
            ExampleWidget(),
            ExampleWidget(),
            ExampleWidget(),
            ExampleWidget(),
            ExampleWidget(),
          ],
        )),
      ),
    );
  }
}



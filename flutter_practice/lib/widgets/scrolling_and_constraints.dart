import 'package:flutter/material.dart';

class ScrollingAndConstraints extends StatelessWidget {
  const ScrollingAndConstraints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scrolling and constraints'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("My name"),
            const Text("My surname"),
            ListView(
              shrinkWrap: true,
              children: const [
                Text("Skill 1", textAlign: TextAlign.center,),
                Text("Skill 2", textAlign: TextAlign.center,),
              ],
            )
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class WidgetDemo extends StatefulWidget {
  final int id;
  const WidgetDemo(this.id);

  @override
  _WidgetDemoState createState() => _WidgetDemoState();
}

class _WidgetDemoState extends State<WidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("The given id is ${widget.id}"),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

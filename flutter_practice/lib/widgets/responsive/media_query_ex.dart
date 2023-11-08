import 'package:flutter/material.dart';

class MediaQueryExample extends StatefulWidget {
  const MediaQueryExample({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MediaQueryState createState() => _MediaQueryState();
}

class _MediaQueryState extends State<MediaQueryExample> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: Center(child: Text("$width")),
      ),
    );
  }
}

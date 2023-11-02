import 'package:flutter/material.dart';

class AuthorWidget extends StatelessWidget {
  const AuthorWidget();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(          
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Nam"),
                Text("Cuong"),
                Text('Tan'),
                Text('Xin'),
              ],
            ),
          
        ),
      ),
    );
  }
}

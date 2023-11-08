import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridData extends StatelessWidget {
  const GridData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(100, (index) {
        return Center(
          child: ListTile(
            leading: const Icon(Icons.add_box),
            title: Text("Item $index"),
          ),
        );
      }),
    );
  }
}

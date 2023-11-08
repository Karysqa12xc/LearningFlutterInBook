import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/responsive/grid_data.dart';
import 'package:flutter_practice/widgets/responsive/list_data.dart';

class ScreenResponsiveTwo extends StatelessWidget {
  const ScreenResponsiveTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(builder: ((context, sizes) {
          if (sizes.maxWidth < 500) {
            return const ListData();
          }
          return const GridData();
        })),
      ),
    );
  }
}

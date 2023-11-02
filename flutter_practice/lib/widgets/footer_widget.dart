import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.email),
                  Icon(Icons.tablet_mac),
                ],
              ),
              Text('Developed by X'),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

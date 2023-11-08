import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageTwoWidget extends StatefulWidget {
  const PageTwoWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PageTwoWidgetState createState() => _PageTwoWidgetState();
}

class _PageTwoWidgetState extends State<PageTwoWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          CupertinoButton(
            onPressed: () {},
            color: CupertinoColors.activeBlue,
            child: const Text(
              "IOS Button",
              style: TextStyle(color: CupertinoColors.white),
            ),
          )
        ]),
      )),
    );
  }
}

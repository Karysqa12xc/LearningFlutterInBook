import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageOneWidget extends StatefulWidget {
  const PageOneWidget({Key? key}) : super(key: key);

  @override
  _PageOneWidgetState createState() => _PageOneWidgetState();
}

class _PageOneWidgetState extends State<PageOneWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: Center(
          child: CupertinoButton(
              child: const Text("Click me"),
              onPressed: () {
                showDialog<void>(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: const Text("Cupertino Alert"),
                        content: const Text("IOS alert dialog"),
                        actions: <Widget>[
                          CupertinoDialogAction(
                              isDefaultAction: true,
                              child: const Text("Ignore"),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                          CupertinoDialogAction(
                              isDefaultAction: true,
                              child: const Text("Delete"),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ],
                      );
                    });
              }),
        ),
      ),
    );
  }
}

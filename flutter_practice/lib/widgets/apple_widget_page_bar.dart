import 'package:flutter/cupertino.dart';

class AppleWidgetPageBar extends StatelessWidget {
  const AppleWidgetPageBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text("Page title"),
            trailing: Icon(CupertinoIcons.info),
          ),
          child: Center(
            child: Text("Body of the app"),
          )),
          debugShowCheckedModeBanner: false,
    );
  }
}

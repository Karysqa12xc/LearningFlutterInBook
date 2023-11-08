import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/page_one_widget.dart';
import 'package:flutter_practice/widgets/page_two_widget.dart';

class AppleWidgetTabBar extends StatelessWidget {
  const AppleWidgetTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: 'Email'),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Text('Page One'),
                ),
                child: PageOneWidget(),
              ),
            );
          default:
            return CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Text('Page Two'),
                ),
                child: PageTwoWidget(),
              ),
            );
        }
      },
    );
  }
}
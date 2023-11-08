import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/scrolling_and_constraints.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io' show Platform;

void main() {
  //* Android UI TEST
  // runApp(cont MaterialApp(
  //     home: Scaffold(
  //   body: MyApp(),
  // )));
  //* IOS UI TEST
  // runApp(const MaterialApp(
  //   home: AppleWidgetTabBar(),
  // ));
  //* Don't do this approach: Multiple platform test
  // if (Platform.isAndroid) {
  //   runApp(const AndroidVersion());
  // } else {
  //   runApp(const IOSVersion());
  // }
  //* Do this approach to make: Multiple platform test
  // runApp(const RestaurantApp());
  //* Responsive
  // runApp(const ScreenResponsiveTwo());
  // runApp(MediaQueryExample());
  runApp(const ScrollingAndConstraints());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text("App Bar with Back Button"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.info)),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.info),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <ListTile>[
              ListTile(
                leading: const Icon(Icons.people_alt),
                title: const Text("Simple Dialog"),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SimpleDialog(
                          title: const Text("Cake flavor?"),
                          children: [
                            SimpleDialogOption(
                              onPressed: () =>
                                  Navigator.pop(context, "chocolate"),
                              child: const Text("Chocolate"),
                            ),
                            SimpleDialogOption(
                              onPressed: () => Navigator.pop(context, "apple"),
                              child: const Text("Apple"),
                            )
                          ],
                        );
                      });
                },
              ),
              ListTile(
                leading: const Icon(Icons.train),
                title: const Text("Alert Dialog"),
                onTap: () {
                  showDialog<void>(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Example"),
                          content: const Text("Do you like this book?"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Yes")),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("No")),
                          ],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        );
                      });
                },
              ),
            ],
          ),
        ),
        // endDrawer: const Drawer(),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("Review")),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showBottomSheet<String>(
                context: context,
                enableDrag: true,
                builder: (BuildContext context) {
                  return Container(
                    color: Colors.red,
                    height: 40,
                    child: const Center(
                      child: Text(
                        "Bottom Sheet",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                });
          },
          backgroundColor: Colors.red,
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is Google Fonts',
              style: GoogleFonts.robotoMono(),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

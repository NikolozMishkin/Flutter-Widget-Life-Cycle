import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyRootPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() {
    print("MyHomePage createState()");
    return _MyHomePageState();
  }

  void didChangeDependencies() {
    print("MyHomePage didChangeDependencies()");
  }
}

class _MyHomePageState extends State<MyHomePage> {
  String message = '';

  void printMessage() {
    setState(() {
      message = 'Hello';
      print("MyHomePage setState()");
    });
  }

  @override
  void initState() {
    super.initState();
    print("MyHomePage initState()");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("MyHomePage didChangeDependencies()");
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("MyHomePage didUpdateWidget()");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("MyHomePage deactivate()");
  }

  @override
  void dispose() {
    super.dispose();
    print("MyHomePage dispose()");
  }

  @override
  Widget build(BuildContext context) {
    print("MyHomePage build()");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: printMessage,
            icon: const Icon(Icons.loop),
          ),
        ],
      ),
    );
  }
}

class MyRootPage extends StatefulWidget {
  const MyRootPage({Key? key}) : super(key: key);

  @override
  _MyRootPageState createState() {
    print("MyRootPage createState()");
    return _MyRootPageState();
  }

  void didChangeDependencies() {
    print("MyRootPage didChangeDependencies()");
  }
}

class _MyRootPageState extends State<MyRootPage> {
  bool showHome = false;
  String message = '';

  void printMessage() {
    setState(() {
      message = 'Hello';
      showHome = !showHome;
      print("MyRootPage setState()");
    });
  }

  @override
  void initState() {
    super.initState();
    print("MyRootPage initState()");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("MyRootPage didChangeDependencies()");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("MyRootPage deactivate()");
  }

  @override
  void didUpdateWidget(covariant MyRootPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("MyRootPage didUpdateWidget()");
  }

  @override
  void dispose() {
    super.dispose();
    print("MyRootPage dispose()");
  }

  @override
  Widget build(BuildContext context) {
    print("MyRootPage build()");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Life Cycle2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (showHome) const MyHomePage(),
            IconButton(
              onPressed: printMessage,
              icon: const Icon(Icons.code_off),
            ),
          ],
        ),
      ),
    );
  }
}




List<MySuperGlobalGeneric> myfunction<MySuperGlobalGeneric extends IsSilly>(List<MySuperGlobalGeneric> l){
  for (final e in l){
    e.makePeopleLaugh();
  } 
  return l;
}

abstract class IsSilly {
  void makePeopleLaugh();
}

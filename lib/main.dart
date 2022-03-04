import 'package:flutter/material.dart';
import 'package:lean_yourself_app/guidelines.dart';
import 'package:lean_yourself_app/monday.dart';
import 'package:lean_yourself_app/startscreen.dart';
import 'recipes.dart';
import 'about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LeanYourself',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'RobotoSlab',
      ),
      home: const MyHomePage(title: 'Lean Yourself'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lean Yourself'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null, // null disables the button
        ),
        backgroundColor: Colors.greenAccent[700],
      ),
      // Column is a vertical, linear layout.
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => monday()));
              },
              child: Center(
                child: const Text(
                  'Weekly Plan',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                //onSurface: Colors.white,
                shadowColor: Colors.white,
                primary: Colors.white,
                elevation: 15.0,
                //shape:
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Guidelines()));
              },
              child: Center(
                child: const Text(
                  'Guidelines',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                //onSurface: Colors.white,
                shadowColor: Colors.white,
                primary: Colors.white,
                elevation: 15.0,
                //shape:
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyRecipes()));
              },
              child: Center(
                child: const Text(
                  'Recipes',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                //onSurface: Colors.white,
                shadowColor: Colors.white,
                primary: Colors.white,
                elevation: 15.0,
                //shape:
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: null,
              child: Center(
                child: const Text(
                  'Biometrics',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                //onSurface: Colors.white,
                shadowColor: Colors.white,
                primary: Colors.white,
                elevation: 15.0,
                //shape:
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
              child: Center(
                child: const Text(
                  'About',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                //onSurface: Colors.white,
                shadowColor: Colors.white,
                primary: Colors.white,
                elevation: 15.0,
                //shape:
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => startscreen()));
              },
              child: Center(
                child: const Text(
                  'Log Out',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                //onSurface: Colors.white,
                shadowColor: Colors.white,
                primary: Colors.white,
                elevation: 15.0,
                //shape:
              ),
            ),
          ],
          mainAxisSize: MainAxisSize.max,
        ),
        color: Colors.pink[100],
        padding: EdgeInsets.fromLTRB(130.0, 20.0, 130.0, 40.0),
      ),
    );
  }
}

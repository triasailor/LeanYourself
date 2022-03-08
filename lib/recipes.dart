import 'package:flutter/material.dart';
import 'package:lean_yourself_app/brunch1.dart';
import 'package:lean_yourself_app/fish1.dart';
import 'package:lean_yourself_app/legumes.dart';
import 'package:lean_yourself_app/meat1.dart';
import 'main.dart';

class MyRecipes extends StatelessWidget {
  const MyRecipes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Recipes'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(
                            title: 'Lean Yourself',
                          )));
            }, // null disables the button
          ),
          backgroundColor: Colors.greenAccent[700]),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => fish1()));
              },
              child: Center(
                child: const Text(
                  'Fish',
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
                    context, MaterialPageRoute(builder: (context) => meat1()));
              },
              child: Center(
                child: const Text(
                  'Meat',
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
                    MaterialPageRoute(builder: (context) => Legumes()));
              },
              child: Center(
                child: const Text(
                  'Legumes',
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
                    MaterialPageRoute(builder: (context) => brunch1()));
              },
              child: Center(
                child: const Text(
                  'Brunch',
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
          ],
          mainAxisSize: MainAxisSize.max,
        ),
        color: Colors.pink[100],
        padding: EdgeInsets.fromLTRB(70.0, 20.0, 70.0, 40.0),
      ),
    );
  }
}

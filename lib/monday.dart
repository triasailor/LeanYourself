import 'package:flutter/material.dart';
import 'main.dart';
import 'tuesday.dart';

class monday extends StatelessWidget {
  const monday({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Weekly Plan'),
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
        body: GestureDetector(
          onHorizontalDragUpdate: (details) {
            // Note: Sensitivity is integer used when you don't want to mess up vertical drag
            int sensitivity = 8;
            if (details.delta.dx < -sensitivity) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => tuesday())); //Left Swipe
            }
          },
          child: Container(
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    child: Text("MONDAY"),
                    padding: EdgeInsets.all(8.0),
                    color: Colors.orange[400],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(alignment: Alignment.center, children: <Widget>[
                  Image.asset('assets/images/breakfast.jpg',
                      color: const Color.fromRGBO(255, 255, 255, 0.3),
                      colorBlendMode: BlendMode.modulate),
                  Text(
                    "someText",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            color: Colors.pink[100],
            padding: EdgeInsets.fromLTRB(130.0, 20.0, 130.0, 40.0),
          ),
        ));
  }
}
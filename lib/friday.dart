import 'package:flutter/material.dart';
import 'main.dart';
import 'thursday.dart';
import 'saturday.dart';

class friday extends StatelessWidget {
  const friday({Key? key}) : super(key: key);
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
                      builder: (context) => saturday())); //Left Swipe
            } else if (details.delta.dx > sensitivity) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => thursday())); //Right Swipe
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
                    child: Text("FRIDAY"),
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
                    "• Oat 80gr                                       •Coconut Milk 250 ml                              • Raw Almonds 30gr",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ]),
                SizedBox(
                  height: 40,
                ),
                Stack(alignment: Alignment.center, children: <Widget>[
                  Image.asset('assets/images/brunch.jpg',
                      color: const Color.fromRGBO(255, 255, 255, 0.3),
                      colorBlendMode: BlendMode.modulate),
                  Text(
                    "• Hard-boiled Eggs 2pcs                                      •Fetta Cheese 10gr                                   • Tomato 1pc",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ]),
                SizedBox(
                  height: 40,
                ),
                Stack(alignment: Alignment.center, children: <Widget>[
                  Image.asset('assets/images/lunch.jpg',
                      color: const Color.fromRGBO(255, 255, 255, 0.3),
                      colorBlendMode: BlendMode.modulate),
                  Text(
                    "• Chicken Breast 360 gr                                     •Basmatti Rice 80gr                                   • Cabbage Salad",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ]),
                SizedBox(
                  height: 40,
                ),
                Stack(alignment: Alignment.center, children: <Widget>[
                  Image.asset('assets/images/snack.jpg',
                      color: const Color.fromRGBO(255, 255, 255, 0.3),
                      colorBlendMode: BlendMode.modulate),
                  Text(
                    "• Green Apple 1pc                                     • Raw Walnuts 5 pcs",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ]),
                SizedBox(
                  height: 40,
                ),
                Stack(alignment: Alignment.center, children: <Widget>[
                  Image.asset('assets/images/dinner.jpg',
                      color: const Color.fromRGBO(255, 255, 255, 0.3),
                      colorBlendMode: BlendMode.modulate),
                  Text(
                    "• Greek Yogurt 2% fat 200gr",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ]),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            color: Colors.pink[100],
            padding: EdgeInsets.fromLTRB(100.0, 20.0, 100.0, 40.0),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'recipes.dart';
import 'main.dart';
import 'brunch2.dart';

class brunch1 extends StatelessWidget {
  const brunch1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Guidelines'),
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
                      builder: (context) => brunch2())); //Left Swipe
            }
          },
          child: Container(
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text("BRUNCH"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "One-Pan Egg & Veg Brunch",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("(4 Servings)"),
                SizedBox(
                  height: 20,
                ),
                Text("Per Serving : "),
                Text("Kcal 170"),
                Text("Fat 7g"),
                Text("Saturates 2g"),
                Text("Carbs 15g"),
                Text("Sugars 5g"),
                Text("Fibre 4g"),
                Text("Protein 9g"),
                Text("Salt 0.22g"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Ingredients",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "300g baby new potatoes , halved ½ tbsp rapeseed oil, 1 knob of butter, 1 courgette , cut into small chunks, 1 yellow pepper , cut into small chunks, 1 red pepper , cut into small chunks, 2 spring onions , finely sliced, 1 garlic clove , crushed, 1 sprig thyme , leaves picked, 4 eggs, toast , to serve"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Method",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("STEP 1"),
                SizedBox(
                  height: 20,
                ),
                Text("Boil the new potatoes for 8 mins, then drain."),
                SizedBox(
                  height: 20,
                ),
                Text("STEP 2"),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Heat the oil and butter in a large non-stick frying pan, then add the courgette, peppers, potatoes and a little salt and pepper. Cook for 10 mins, stirring from time to time until everything is starting to brown. Add the spring onions, garlic and thyme and cook for 2 mins more."),
                SizedBox(
                  height: 20,
                ),
                Text("STEP 3"),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Make four spaces in the pan and crack in the eggs. Cover with foil or a lid and cook for around 4 mins, or until the eggs are cooked (with the yolks soft for dipping into). Sprinkle with more thyme leaves and ground black pepper if you like. Serve with toast."),
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

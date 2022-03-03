import 'package:flutter/material.dart';
import 'recipes.dart';
import 'main.dart';
import 'meat2.dart';

class meat1 extends StatelessWidget {
  const meat1({Key? key}) : super(key: key);
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
                      builder: (context) => meat2())); //Left Swipe
            }
          },
          child: Container(
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text("MEAT"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Chicken With Smashed Sweet Potatoes and Broccoli",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("(4 Servings)"),
                SizedBox(
                  height: 20,
                ),
                Text("Per Serving : "),
                Text("Kcal 662"),
                Text("Fat 23g"),
                Text("Saturates 6g"),
                Text("Carbs 74g"),
                Text("Sugars 40g"),
                Text("Fibre 15g"),
                Text("Protein 32g"),
                Text("Salt 2.1g"),
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
                    "3 large sweet potatoes (about 900g), peeled and cut into large chunksoil , for drizzling 6-8 chicken thighs, skin left on 2 red onions , cut into wedges 25g sachet piri-piri spice mix (or a mild version, if you like) 300g long-stem broccoli"),
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
                Text(
                    "Heat the oven to 180C/160C fan/gas 4. Toss the sweet potatoes with a generous drizzle of oil and some seasoning, and tip into a very large roasting tin. Push the potatoes to one end of the tin, then, in the other end, toss the chicken with the onions, spice mix, a drizzle of oil and some seasoning. Roast for 40 mins, stirring everything halfway through. Add the broccoli to the tin, drizzle with a little oil and season, then roast for 10-15 mins more."),
                SizedBox(
                  height: 20,
                ),
                Text("STEP 2"),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Remove the chicken, onions and broccoli from the tin. Roughly mash the potatoes using a fork, making sure you incorporate all the chicken juices and spices from the pan. Spread the mash over the base of the tin, then top with the broccoli, chicken and onions and serve from the tin in the middle of the table."),
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

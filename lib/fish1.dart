import 'package:flutter/material.dart';
import 'recipes.dart';
import 'main.dart';
import 'fish2.dart';

class fish1 extends StatelessWidget {
  const fish1({Key? key}) : super(key: key);
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
                      builder: (context) => fish2())); //Left Swipe
            }
          },
          child: Container(
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text("FISH"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Steamed Trout With Mint & Dill Dressing",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("(2 Servings)"),
                SizedBox(
                  height: 20,
                ),
                Text("Per Serving : "),
                Text("Kcal 378"),
                Text("Fat 10g"),
                Text("Saturates 2g"),
                Text("Carbs 25g"),
                Text("Sugars 12g"),
                Text("Fibre 7g"),
                Text("Protein 43g"),
                Text("Salt 0.5g"),
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
                    "120g new potatoes , halved 170g pack asparagus spears , woody ends trimmed 1 ½ tsp vegetable bouillon powder made up to 225ml with water 80g fine green beans , trimmed 80g frozen peas 2 skinless trout fillets 2 slices lemon"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "For The Dressing",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "4 tbsp bio yogurt, 1 tsp cider vinegar, ¼ tsp English mustard powder, 1 tsp finely chopped mint, 2 tsp chopped dill"),
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
                    "Put the new potatoes on to simmer in a pan of boiling water until tender. Cut the asparagus in half to shorten the spears and slice the ends without the tips. Tip the bouillon into a wide non-stick pan. Add the asparagus and beans, then cover and cook for 5 mins."),
                SizedBox(
                  height: 20,
                ),
                Text("STEP 2"),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Add the peas to the pan, then top with the trout and lemon slices. Cover again and cook for 5 mins more until the fish flakes really easily, but is still juicy."),
                SizedBox(
                  height: 20,
                ),
                Text("STEP 3"),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Meanwhile, mix the yogurt with the vinegar, mustard powder, mint and dill. Stir in 2-3 tbsp of the fish cooking juices. Put the veg and any remaining pan juices in bowls, top with the fish and herb dressing, then serve with the potatoes."),
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

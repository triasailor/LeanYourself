import 'package:flutter/material.dart';
import 'recipes.dart';
import 'main.dart';

class Legumes extends StatelessWidget {
  const Legumes({Key? key}) : super(key: key);
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
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text("LEGUMES"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Baked Ratatouille & Goat's Cheese",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("(6 Servings)"),
            SizedBox(
              height: 20,
            ),
            Text("Per Serving : "),
            Text("Kcal 472"),
            Text("Fat 31g"),
            Text("Saturates 16g"),
            Text("Carbs 25g"),
            Text("Sugars 17g"),
            Text("Fibre 9g"),
            Text("Protein 20g"),
            Text("Salt 1g"),
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
                "4 tbsp olive oil, 2 red onions, chopped 2 garlic cloves , finely chopped 2 aubergines , diced 2 red peppers , seeded and diced 1 tsp smoked paprika 2 tbsp balsamic vinegar 1 tsp soy sauce 500ml passata 200g young goat’s cheese 4 courgettes (a mixture of green and yellow looks nice), thinly sliced"),
            SizedBox(
              height: 20,
            ),
            Text(
              "For The Cheese Sauce",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "400ml milk 50g unsalted butter 50g plain flour 80g parmesan or vegetarian alternative, finely grated"),
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
                "Heat 1 tbsp olive oil in a heavy frying pan and gently cook the red onion and garlic for 5 mins until just starting to brown. Scatter over the aubergine and red pepper and sizzle for another 4 mins, adding more oil if you need to. Season well and stir through the paprika, then splash in the vinegar and soy sauce. Pour over the passata, then simmer for 5 mins until glossy and thick. Turn off the heat. Can be made up to two days ahead and kept in the fridge."),
            SizedBox(
              height: 20,
            ),
            Text("STEP 2"),
            SizedBox(
              height: 20,
            ),
            Text(
                "To make the cheese sauce, heat the milk in a heavy saucepan until simmering. In a separate pan, melt the butter and add the flour. Stir to make a paste. Slowly whisk in the hot milk and simmer gently for 2-3 mins, stirring continually until thickened slightly. Stir in the parmesan and season."),
            SizedBox(
              height: 20,
            ),
            Text("STEP 3"),
            SizedBox(
              height: 20,
            ),
            Text(
                "Tip the ratatouille into an ovenproof dish, then completely cover it with the cheese sauce. Crumble over the goat’s cheese and arrange the courgette slices on top in concentric circles, alternating between green and yellow if you have them. Can be assembled several hours before cooking."),
            SizedBox(
              height: 20,
            ),
            Text("STEP 4"),
            SizedBox(
              height: 20,
            ),
            Text(
                "Heat oven to 220C/200C fan/gas 7. Brush or drizzle the remaining oil over the courgette slices and season with sea salt. Bake in the oven for 25-30 mins until the courgettes are cooked through and starting to brown. Remove from the oven and allow to rest for 20 mins before serving."),
            SizedBox(
              height: 20,
            )
          ],
        ),
        color: Colors.pink[100],
        padding: EdgeInsets.fromLTRB(130.0, 20.0, 130.0, 40.0),
      ),
    );
  }
}

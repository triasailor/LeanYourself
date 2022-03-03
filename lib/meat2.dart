import 'package:flutter/material.dart';
import 'meat1.dart';
import 'main.dart';
import 'meat3.dart';

class meat2 extends StatelessWidget {
  const meat2({Key? key}) : super(key: key);
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
                      builder: (context) => meat3())); //Left Swipe
            } else if (details.delta.dx > sensitivity) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => meat1())); //right Swipe
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
                  "Chicken Curry",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("(4 Servings)"),
                SizedBox(
                  height: 20,
                ),
                Text("Per Serving : "),
                Text("Kcal 354"),
                Text("Fat 23g"),
                Text("Saturates 4g"),
                Text("Carbs 10g"),
                Text("Sugars 8g"),
                Text("Fibre 3g"),
                Text("Protein 24g"),
                Text("Salt 0.6g"),
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
                    "2 tbsp sunflower oil, 1 onion, thinly sliced, 2 garlic cloves, crushed, thumb-sized piece of ginger, grated, 6 chicken thighs, boneless and skinless, 3 tbsp medium spice paste (tikka works well), 400g can chopped tomatoes, 100g Greek yogurt, 1 small bunch of coriander, leaves chopped, 50g ground almonds, naan breads or cooked basmati rice, to serve"),
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
                    "Heat the oil in a flameproof casserole dish or large frying pan over a medium heat. Add the onion and a generous pinch of salt and fry for 8-10 mins, or until the onion has turned golden brown and sticky. Add the garlic and ginger, cooking for a further minute."),
                SizedBox(
                  height: 20,
                ),
                Text("STEP 2"),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Chop the chicken into chunky 3cm pieces, add to the pan and fry for 5 mins before stirring through the spice paste and tomatoes, along with 250ml water. Bring to the boil, lower to a simmer and cook on a gentle heat uncovered for 25-30 mins or until rich and slightly reduced. Stir though the yogurt, coriander and ground almonds, season and serve with warm naan or fluffy basmati rice."),
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

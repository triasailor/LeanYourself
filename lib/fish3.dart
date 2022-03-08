import 'package:flutter/material.dart';
import 'fish2.dart';
import 'main.dart';

class fish3 extends StatelessWidget {
  const fish3({Key? key}) : super(key: key);
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
            if (details.delta.dx > sensitivity) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => fish2())); //right Swipe
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
                  "Cod & Smashed Celeriac",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("(2 Servings)"),
                SizedBox(
                  height: 20,
                ),
                Text("Per Serving : "),
                Text("Kcal 326"),
                Text("Fat 19g"),
                Text("Saturates 3g"),
                Text("Carbs 7g"),
                Text("Sugars 5g"),
                Text("Fibre 12g"),
                Text("Protein 26g"),
                Text("Salt 0.8g"),
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
                    "1 small celeriac , peeled and chopped, 3 tbsp olive oil, 1 tsp fennel seeds, 4 spring onions , each cut into 3 on the diagonal, 1 courgette , grated, 1 garlic clove , crushed, 2 x 125g skinless cod fillets, 1 lemon , ½ juiced and ½ cut into wedges, to serve, 1 tbsp chopped parsley leaves, to serve, rocket leaves , to serve"),
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
                    "Heat oven to 200C/180C fan/gas 6. Put the celeriac into a roasting tin, drizzle with 2 tbsp oil, then sprinkle over the fennel seeds. Season and bake in the oven for 45 mins, stirring halfway through, until lightly charred."),
                SizedBox(
                  height: 20,
                ),
                Text("STEP 2"),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "While the celeriac cooks, put the spring onions in a dry pan and cook over a high heat for 3-4 mins, turning occasionally, until starting to char. Spread two large sheets of foil out on your work surface. Divide the spring onions between the foil sheets, then top with the grated courgette, garlic and fish. Season and drizzle over the lemon juice and the remaining 1 tbsp olive oil. Scrunch up the edges of the foil to seal and create two parcels. Put the parcels on a baking sheet and bake in the oven for 10-12 mins."),
                SizedBox(
                  height: 20,
                ),
                Text("STEP 3"),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "When the celeriac is cooked, mash the pieces with a potato masher or a fork and season well. Pile the smashed celeriac onto plates, then carefully open the fish parcels – the contents will be hot – and gently slide onto the plates next to the celeriac. Garnish with parsley and serve with rocket leaves and lemon wedges."),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            color: Colors.pink[100],
            padding: EdgeInsets.fromLTRB(70.0, 20.0, 70.0, 40.0),
          ),
        ));
  }
}

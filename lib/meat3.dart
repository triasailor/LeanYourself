import 'package:flutter/material.dart';
import 'meat2.dart';
import 'main.dart';

class meat3 extends StatelessWidget {
  const meat3({Key? key}) : super(key: key);
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
                      builder: (context) => meat2())); //right Swipe
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
                  "Turkey Tikka Masala",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("(4 Servings)"),
                SizedBox(
                  height: 20,
                ),
                Text("Per Serving : "),
                Text("Kcal 563"),
                Text("Fat 34g"),
                Text("Saturates 13g"),
                Text("Carbs 12g"),
                Text("Sugars 11g"),
                Text("Fibre 3g"),
                Text("Protein 51g"),
                Text("Salt 0.7g"),
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
                    "sunflower oil, onion, finely chopped, 3 garlic cloves, crushed or finely grated, thumb-sized piece of ginger, peeled and finely grated, 1 red chilli, deseeded and finely chopped, 1 tsp cumin seeds, 1 tsp ground coriander, ½ tsp paprika, ½ tsp ground turmeric, ½ tsp garam masala, 1 tbsp tomato purée, 400g can passata or chopped tomatoes, 1 tbsp mango chutney, 100ml double cream, 2 tbsp natural yogurt (optional), about 600g leftover roast turkey, cut into large chunks, chopped coriander, toasted flaked almonds, steamed rice and garlic naan breads, to serve"),
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
                    "Heat the oil in a casserole dish or shallow pan over a medium heat, and fry the onions for 10-12 mins until golden. Stir in the garlic, ginger, chilli and all the spices, and cook for 2 mins more until the mixture resembles a paste. Stir in the tomato purée, passata or chopped tomatoes and mango chutney, and bring to a simmer. Cook for a further 10 mins."),
                SizedBox(
                  height: 20,
                ),
                Text("STEP 2"),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Stir in most of the cream and the yogurt, if using, and return the mixture to a simmer. Add the turkey and continue to simmer until the turkey is piping hot. Remove from the heat, drizzle over the remaining cream and stir through briefly. Scatter over some coriander and flaked almonds, and serve with the rice and naan breads on the side."),
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

import 'package:flutter/material.dart';
import 'fish1.dart';
import 'main.dart';
import 'fish3.dart';

class fish2 extends StatelessWidget {
  const fish2({Key? key}) : super(key: key);
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
                      builder: (context) => fish3())); //Left Swipe
            } else if (details.delta.dx > sensitivity) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => fish1())); //right Swipe
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
                  "Zesty Salmon With Roasted Beets & Spinach",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("(2 Servings)"),
                SizedBox(
                  height: 20,
                ),
                Text("Per Serving : "),
                Text("Kcal 543"),
                Text("Fat 32g"),
                Text("Saturates 5g"),
                Text("Carbs 27g"),
                Text("Sugars 22g"),
                Text("Fibre 10g"),
                Text("Protein 33g"),
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
                    "4 small fresh beetroots , about 200g, 1 ½ tbsp rapeseed oil, 1 tsp coriander seeds lightly crushed, 2 skinless salmon or trout fillets, 2 ½ small oranges , zest of 1 and juice of half, 3 tbsp pumpkin seeds, 1 garlic clove, 1 red onion , finely chopped, 4 handfuls baby spinach leaves, 1 avocado , thickly sliced"),
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
                    "Heat oven to 180C, 160C fan, gas 4. Trim the stems of the beetroot and reserve any tender leaves that are suitable for eating in the salad. Cut the beetroots into quarters then toss with 1/2 tbsp oil, the coriander seeds, and some seasoning then pile into the centre of a large sheet of foil and wrap up like a parcel. Bake for 45 mins or until the beetroots are tender then top with the salmon, scatter over half the orange zest and return to the oven for 15 mins. If you want to toast the pumpkin seeds, put them in the oven for 10 mins."),
                SizedBox(
                  height: 20,
                ),
                Text("STEP 2"),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Meanwhile cut the peel and pith from 2 oranges then cut out the segments with a sharp knife working over a bowl to catch the juices. Finely grate the garlic and leave for 10 mins to allow the enzymes to activate. Stir the garlic into the orange juice and remaining oil with seasoning to make a dressing."),
                SizedBox(
                  height: 20,
                ),
                Text("STEP 3"),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Remove the parcel from the oven and carefully lift off the fish. Tip the beetroot into a bowl with the red onion, remaining orange zest, pumpkin seeds and spinach leaves and toss well. Gently toss through the orange segments and avocado with any beet leaves then pile onto plates and top with the warm salmon. Drizzle over the dressing and serve while still warm."),
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

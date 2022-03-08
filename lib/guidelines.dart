import 'package:flutter/material.dart';
import 'main.dart';

class Guidelines extends StatelessWidget {
  const Guidelines({Key? key}) : super(key: key);
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
            Text(
              " Your trip to losing weight will be long (remember you build something that will last!), but we will be here to make it fun, enjoyful and undoubtedly profitable!",
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "During this trip and even after meeting your health and weight goals with us, except for your weekly plan, it will be very helpful for you to follow these simple guidelines : "),
            SizedBox(
              height: 20,
            ),
            Text(
                "1. Eat varied, colourful, nutritionally dense foods like fresh fruits and vegetables,fish,legumes, nuts, seeds and whole grains, such as brown rice and oatmeal."),
            SizedBox(
              height: 20,
            ),
            Text(
                "2. Avoid eating foods with added oils, butter, and sugar, fatty red or processed meats, baked goods, bagels, white bread and processed foods."),
            SizedBox(
              height: 20,
            ),
            Text(
                "3. Engage in regular physical activity and exercise like taking the stairs, raking leaves, walking a dog, gardening, dancing, playing outdoor games, parking farther away from a building entrance."),
            SizedBox(
              height: 20,
            ),
            Text(
                "4. Eliminate liquid calories such as sweetened beverages, tea juices and alcohol."),
            SizedBox(
              height: 20,
            ),
            Text(
                "5. Rest enough and try to keep your sleep schedule as steady as you can."),
            SizedBox(
              height: 20,
            ),
            Text(
                "6. eat plenty of water between your meals to stay hydrated, cleanse your organs and help your body extrude those fatty acids out."),
            SizedBox(
              height: 20,
            ),
            Text(
                "7. DO IT TOGETHER! A friend, your wife or husband could be your one other’s ardent fan and support each other along the journey of losing weight. be sure to share your thoughts, your goals and weaknesses."),
            SizedBox(
              height: 20,
            ),
            Text(
                "8. stay positive! nothing happened if you derailed your plan for a week or two! accept the setbacks as a chance to reprogram your self for a new start! Remember that it is a long trip! it will be your new way of living - not just a 3 week fix-it-all-and-forever thing."),
            SizedBox(
              height: 20,
            ),
          ],
        ),
        color: Colors.pink[100],
        padding: EdgeInsets.fromLTRB(70.0, 20.0, 70.0, 40.0),
      ),
    );
  }
}

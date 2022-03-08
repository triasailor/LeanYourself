import 'package:flutter/material.dart';
import 'main.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('About'),
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
        child: ListView(children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "WHO WE ARE",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "The Team",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Triantafyllos Papoutsis - Phd Wellness and Fitness NTUA"),
          Image.asset(
            "assets/images/trias.jpg",
            width: 200,
            height: 200,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Odysseas Moschidis - Phd Biochemistry and food science NTUA"),
          SizedBox(
            height: 20,
          ),
          Image.asset("assets/images/odusseas.jpeg",
              width: 400, height: 200, fit: BoxFit.fitWidth),
          SizedBox(
            height: 20,
          ),
          Text("Maria Tsigara - Phd Kinesiology and Homeopathy Sciences NTUA"),
          SizedBox(
            height: 20,
          ),
          Image.asset("assets/images/maria.jpeg", width: 200, height: 200),
          SizedBox(
            height: 20,
          ),
          Text(
              "We are a team of Nutrition and fitness scientists, who take very seriously our customers’ goal. We have spent thousands of hours to design losing weight systems for people all around the world. Hundreds of people feel so grateful for "),
          Text(
            "LEAN YOURSELF",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("and speak out loud their success!"),
          SizedBox(
            height: 20,
          ),
        ]),
        color: Colors.pink[100],
        padding: EdgeInsets.fromLTRB(70.0, 20.0, 70.0, 40.0),
      ),
    );
  }
}

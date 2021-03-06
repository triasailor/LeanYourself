import 'package:flutter/material.dart';
import 'main.dart';
import 'login_form.dart';
import 'signup_form.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

enum sex { Female, Male }
enum preferences { Vegeterian, Omnivore }

// Define a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  sex? choice = sex.Female;
  preferences? pref = preferences.Omnivore;

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'AGE*',
              labelStyle: TextStyle(
                color: Colors.deepPurple[400],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                "15 - 80",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.deepPurple[400], fontSize: 10),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid age 15 - 80';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'WEIGHT*',
              labelStyle: TextStyle(
                color: Colors.deepPurple[400],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                "in Kg",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.deepPurple[400], fontSize: 10),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your weight';
              }
              return null;
            },
            decoration: InputDecoration(
                labelText: 'HEIGHT*',
                labelStyle: TextStyle(
                  color: Colors.deepPurple[400],
                )),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                "in cm",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.deepPurple[400], fontSize: 10),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                "SEX",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.deepPurple[400],
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text('Female'),
            leading: Radio<sex>(
              value: sex.Female,
              groupValue: choice,
              onChanged: (sex? value) {
                setState(() {
                  choice = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Male'),
            leading: Radio<sex>(
              value: sex.Male,
              groupValue: choice,
              onChanged: (sex? value) {
                setState(() {
                  choice = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                "DIET PREFERENCES",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.deepPurple[400],
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text('Vegeterian'),
            leading: Radio<preferences>(
              value: preferences.Vegeterian,
              groupValue: pref,
              onChanged: (preferences? value) {
                setState(() {
                  pref = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Omnivore'),
            leading: Radio<preferences>(
              value: preferences.Omnivore,
              groupValue: pref,
              onChanged: (preferences? value) {
                setState(() {
                  pref = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate())
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => login_form()));
            },
            child: Center(
              child: const Text(
                'SUBMIT',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                //onSurface: Colors.white,
                shadowColor: Colors.green[700],
                primary: Colors.green[700],
                elevation: 15.0,
                padding: EdgeInsets.all(19.0)
                //shape:
                ),
          ),
          // Add TextFormFields and ElevatedButton here.
        ],
      ),
    );
  }
}

class biometrics extends StatelessWidget {
  const biometrics({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/logo.jpg'),
              SizedBox(
                height: 40,
              ),
              MyCustomForm(),
              SizedBox(
                height: 40,
              ),
            ],
            mainAxisSize: MainAxisSize.max,
          ),
          color: Colors.pink[100],
          padding: EdgeInsets.fromLTRB(70.0, 20.0, 70.0, 40.0),
        )
      ],
    ));
  }
}

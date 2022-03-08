import 'package:flutter/material.dart';
import 'main.dart';
import 'login_signup.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

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
              labelText: 'USERNAME*',
              labelStyle: TextStyle(
                color: Colors.deepPurple[400],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                "You will use this along with the password to enter the app",
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
                return 'Please enter some text';
              }
              return null;
            },
            decoration: InputDecoration(
                labelText: 'PASSWORD*',
                labelStyle: TextStyle(
                  color: Colors.deepPurple[400],
                )),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                "Should be longer than 5 characters and contain at least one of each : A-Z, a-z, 0-9, !#@%&*",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.deepPurple[400], fontSize: 10),
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate())
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(
                              title: 'Lean Yourself',
                            )));
            },
            child: Center(
              child: const Text(
                'LOG IN',
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

class login_form extends StatelessWidget {
  const login_form({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/logo.jpg'),
            SizedBox(
              height: 20,
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
      ),
    );
  }
}

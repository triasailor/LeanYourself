import 'package:flutter/material.dart';
import 'main.dart';
import 'login_signup.dart';

class startscreen extends StatelessWidget {
  const startscreen({Key? key}) : super(key: key);

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
              height: 80,
            ),
            Text(
              'Start eating delicious, nutritious and healthy meals customized to yourself!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Discover new You with Lean Yourself!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => login_signup()));
              },
              child: Center(
                child: const Text(
                  'Join Action',
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
          ],
          mainAxisSize: MainAxisSize.max,
        ),
        color: Colors.pink[100],
        padding: EdgeInsets.fromLTRB(70.0, 20.0, 70.0, 40.0),
      ),
    );
  }
}

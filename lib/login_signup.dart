import 'package:flutter/material.dart';
import 'package:lean_yourself_app/signup_form.dart';
import 'main.dart';
import 'startscreen.dart';
import 'login_form.dart';

class login_signup extends StatelessWidget {
  const login_signup({Key? key}) : super(key: key);

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
              height: 90,
            ),
            Text(
              'Proceed to SIGN UP to create a new account and start losing pounds! :',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => signup_form()));
              },
              child: Center(
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/logo2.jpg'),
            SizedBox(
              height: 20,
            ),
            Text('if you already have an account please LOG IN :',
                style: TextStyle(fontSize: 16)),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => login_form()));
              },
              child: Center(
                child: const Text(
                  'LOG IN',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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

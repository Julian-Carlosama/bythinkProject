// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  // Princial widget that show the loging screeen
  // ignore: non_constant_identifier_names
  Widget LoginAp(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(32, 32, 32, 30),
        color: Color.fromARGB(255, 0, 0, 0),
        child: ElevatedButton(
          child: Text('SIGN IN',
              style: TextStyle(
                color: Colors.black,
              )),
          onPressed: () {
            Navigator.pushNamed(context, 'homepage');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
          ),
        ));
  }

  // Widget that show and call the features of loginAp function
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 0, 0, 0),
        child: ListView(
          children: [
            SizedBox(
              height: 200,
            ),
            Center(
              child: Text(
                'Welcome to',
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'ManuExpert',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Lobster', fontSize: 30),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            textBox("Enter your name"),
            SizedBox(
              height: 10,
            ),
            textBox("Enter your password"),
            LoginAp(context),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                'Forget password?',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget textBox(String label) {
    return Column(
      children: [
        SizedBox(
            width: 320,
            child: TextField(
              cursorColor: Color.fromARGB(255, 21, 21, 21),
              /*style: TextStyle(
              color: Colors.black,
            ),*/
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: label,
                labelStyle: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                contentPadding: EdgeInsets.all(10.0),
              ),
            ))
      ],
    );
  }
}

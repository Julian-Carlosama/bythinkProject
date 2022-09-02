import 'package:flutter/material.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

 // Princial widget that show the loging screeen
  Widget LoginAp(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(32, 32, 32, 30),
        color: Color.fromRGBO(249, 161, 30, 1),
        child: ElevatedButton(
          child: Text('SIGN IN'),
          onPressed: () {
            Navigator.pushNamed(context, 'homepage');
          },
        ));
  }

  // Widget that show and call the features of loginAp function
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 103, 249, 30),
        child: ListView(
          children: [Text('Welcome to Bythink'), LoginAp(context)],
        ),
      ),
    );
  }
}

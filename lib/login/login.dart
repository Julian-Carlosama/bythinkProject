import 'package:flutter/material.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  // Princial widget that show the loging screeen
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
            primary: Colors.white,
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
                  color: Colors.white,
                  fontFamily: 'Lobster',
                  fontSize: 30
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            TextBox(),
            SizedBox(
              height: 10,
            ),
            TextBox(),
            LoginAp(context),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                'Forget password?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget TextBox() {
    return Column(
      children: [
        TextField(
          //controller: controller,
          cursorColor: Color.fromARGB(255, 21, 21, 21),
          style: TextStyle(
            color: Colors.black,
          ),
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              labelText: 'Enter your name',
              /*border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              )*/
              hintStyle: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  color: Colors.green,
                  width: 5
                )
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10)
            ),
        )
      ],
    );
  }
}

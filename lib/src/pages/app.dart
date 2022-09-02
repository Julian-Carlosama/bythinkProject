import 'package:bythink/src/pages/home_page.dart';
import 'package:bythink/src/routes/routes.dart';
import 'package:flutter/material.dart';

// This class screen show the login when call the initial route
class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(pri)
      theme: ThemeData(
        //brightness: Brightness.dark,
        canvasColor: Colors.white,
        //canvasColor: Colors.black,
      ),
      //home: Center(child: HomePage()),
      initialRoute: '/',
      routes: getApplicationRoutes(),
    );
  }

  //ThemeData newMethod() => ThemeData();
}

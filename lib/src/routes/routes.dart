import 'package:bythink/login/login.dart';
import 'package:bythink/src/pages/home_page.dart';
import 'package:bythink/src/pages/locksmith_section.dart';
import 'package:bythink/src/pages/mechanic_section.dart';
import 'package:bythink/src/pages/electrical_section.dart';
import 'package:flutter/material.dart';

// This code block allow get routes called previously defined
Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder> {
    '/' :(BuildContext context) => LoginApp(),
    'homepage' :(BuildContext context) => HomePage(),
    'mechanic' :(BuildContext context) => MechanicSection(),
    'locksmith' :(BuildContext context) => LocksmithSection(),
    'electrical' :(BuildContext context) => ElectricalSection(),
    /*'/' :(BuildContext context) => HomePage(),
    '/' :(BuildContext context) => HomePage(),
    '/' :(BuildContext context) => HomePage(),
    '/' :(BuildContext context) => HomePage(),
    '/' :(BuildContext context) => HomePage(),
    '/' :(BuildContext context) => HomePage(),
    '/' :(BuildContext context) => HomePage(),
    '/' :(BuildContext context) => HomePage(),*/
    
  };
}

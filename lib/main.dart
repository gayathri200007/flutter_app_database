import 'package:flutter/material.dart';
import 'package:flutter_app_database/pages/bookdoc.dart';
import 'package:flutter_app_database/pages/home_page.dart';
import 'package:flutter_app_database/pages/login/login_page.dart';
import 'package:flutter_app_database/pages/login/register.dart';
import 'package:flutter_app_database/pages/mainscreen.dart';
import 'package:flutter_app_database/pages/moods.dart';
import 'package:flutter_app_database/pages/pathome.dart';
import 'package:flutter_app_database/pages/patprofile.dart';
import 'package:flutter_app_database/pages/viewbook.dart';


void main() => runApp(MyApp());

final routes = {
  '/Mainscreen':(BuildContext context) => new MainScreen(),
  '/login': (BuildContext context) => new LoginPage(),
  '/home': (BuildContext context) =>  HomePage(),
  '/register': (BuildContext context) => new RegisterPage(),
  '/': (BuildContext context) => new LoginPage(),
  '/pathome':(BuildContext context) => new pathomescreen(),
  '/mood':(BuildContext context) => new MoodsSelector(),
  '/bookdoc':(BuildContext context) => new bookdoc(),
  '/viewdoc':(BuildContext context) => new viewdoc(),
  '/patprofile':(BuildContext context) => new patprofile(),

};

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Sqflite App',
      theme: new ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_catalog/Pages/home_page.dart';
import 'package:flutter_catalog/Pages/login_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => loginPage(),
        "/home": (context) => HomePage(),
        "/Login": (context) => loginPage(),
      },
    );
  }
}

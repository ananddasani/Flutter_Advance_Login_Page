import 'package:flutter/material.dart';
import 'package:login_app_advance/util/routes.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login App Advance",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      // home: HomePage(), //both (home: & routes: ) is conflicting
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}

import 'package:finalproject/detiles.dart';
import 'package:finalproject/home_screen.dart';
import 'package:finalproject/layout_screen.dart';

import 'package:flutter/material.dart';

import 'loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffff0000),
        primarySwatch: Colors.red,
      ),
      home: LoginScreen(0),
    );
  }
}

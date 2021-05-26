import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/Home.dart';
// import 'package:flutter_application_2/screens/Home.dart';
import 'package:flutter_application_2/screens/SignIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: HomeScreen());
  }
}

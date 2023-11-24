import 'package:flutter/material.dart';
import 'package:news/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      routes: {HomeScreen.routName: (context) => HomeScreen()},
    );
  }
}

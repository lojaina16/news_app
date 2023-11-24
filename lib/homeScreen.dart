import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routName = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News app", style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
      ),
    );
  }
}

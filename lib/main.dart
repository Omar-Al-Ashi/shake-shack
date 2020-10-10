import 'package:flutter/material.dart';

import "./screens/meals_overview_screen.dart";
import "./widgets/custom_app_bar.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shack Shack',
      theme: ThemeData(fontFamily: 'Futura'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isBack: false,
      ),
      body: MealsOverview(),
    );
  }
}

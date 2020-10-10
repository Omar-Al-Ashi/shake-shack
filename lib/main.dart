import 'package:flutter/material.dart';

import "./screens/meals_overview_screen.dart";

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/icons/mic_icon.png'),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('assets/icons/dials_icon.png'),
            onPressed: () {},
          ),
        ],
        title: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Order To",
                style: TextStyle(
                  color: Color(0xff55A335),
                  fontSize: 11,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Jumeirah Lake Towers",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
      body: MealsOverview(),
    );
  }
}

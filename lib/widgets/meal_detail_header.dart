import 'package:flutter/material.dart';

class MealDetailHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset("assets/images/white_eclipse_background.png"),
        Image.asset(
          "assets/images/burger2.png",
          fit: BoxFit.cover,
          height: 200,
          width: 200,
        ),
      ],
    );
  }
}

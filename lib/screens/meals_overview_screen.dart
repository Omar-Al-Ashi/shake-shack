import 'package:flutter/material.dart';

import '../widgets/image_header.dart';
import '../widgets/horizontal_list.dart';
import '../widgets/most-ordered.dart';
import '../widgets/burger_card.dart';
import './meel_detail_screen.dart';

class MealsOverview extends StatefulWidget {
  @override
  _MealsOverviewState createState() => _MealsOverviewState();
}

class _MealsOverviewState extends State<MealsOverview> {
  cardClicked(burgerName) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => MealDetail(burgerName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          HorizontalList(),
          ImageHeader(),
          MostOrdered(),
          Container(
            alignment: Alignment.centerRight,
            child: BurgerCard(
                imageLocation: "assets/images/burger2.png",
                burgerPrice: "AED 39",
                burgerName: "B-b-bacon!",
                burgerCaption: "Juicy just got juicier.",
                cardClicked: cardClicked),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BurgerCard(
                  imageLocation: "assets/images/burger4.png",
                  burgerPrice: "AED 42",
                  burgerName: "ShackBurger*",
                  burgerCaption: "Cheesy and Juicy.",
                  cardClicked: cardClicked),
              BurgerCard(
                  imageLocation: "assets/images/burger3.png",
                  burgerPrice: "AED 39",
                  burgerName: "B-b-bacon!",
                  burgerCaption: "Juicy just got juicier.",
                  cardClicked: cardClicked),
            ],
          ),
        ],
      ),
    );
  }
}

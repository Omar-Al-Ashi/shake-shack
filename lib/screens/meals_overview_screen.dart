import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../api/api.dart';
import '../widgets/image_header.dart';
import '../widgets/horizontal_list.dart';
import '../widgets/most-ordered.dart';
import '../widgets/burger_card.dart';
import './meal_detail_screen.dart';

class MealsOverview extends StatefulWidget {
  @override
  _MealsOverviewState createState() => _MealsOverviewState();
}

class _MealsOverviewState extends State<MealsOverview> {
  List icons = [];
  List burgers = [];
  bool isLoading = false;

  @override
  void initState() {
    setState(() {
      isLoading = true;
    });
    API.getInitialIcon().then((icons) => {
          setIcons(icons),
        });
    API.getBurgerList().then((burgerList) => {
          setBurgerList(burgerList),
        });
    super.initState();
  }

  setBurgerList(burgerList) {
    print(burgerList);
    setState(() {
      isLoading = false;
      burgers = burgerList;
    });
  }

  setIcons(iconsProps) {
    setState(() {
      icons = iconsProps;
    });
  }

  cardClicked(burgerName) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => MealDetail(burgerName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            child: ListView(
              children: [
                HorizontalList(icons),
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
                    ...burgers
                        .map(
                          (burger) => BurgerCard(
                              imageLocation: burger["image"],
                              burgerPrice: burger["price"],
                              burgerName: burger["title"],
                              burgerCaption: burger["description"],
                              cardClicked: cardClicked),
                        )
                        .toList()
                    //   BurgerCard(
                    //       imageLocation: "assets/images/burger4.png",
                    //       burgerPrice: "AED 42",
                    //       burgerName: "ShackBurger*",
                    //       burgerCaption: "Cheesy and Juicy.",
                    //       cardClicked: cardClicked),
                    //   BurgerCard(
                    //       imageLocation: "assets/images/burger3.png",
                    //       burgerPrice: "AED 39",
                    //       burgerName: "B-b-bacon!",
                    //       burgerCaption: "Juicy just got juicier.",
                    //       cardClicked: cardClicked),
                  ],
                ),
              ],
            ),
          );
  }
}

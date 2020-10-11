import 'dart:math';

import 'package:flutter/material.dart';

import '../widgets/extras_list.dart';
import '../widgets/horizontal_list_item.dart';
import '../widgets/meal_detail_header.dart';
import '../widgets/meal_detail_info.dart';
import '../widgets/counter.dart';
import '../widgets/custom_icon_button.dart';

class MealDetail extends StatelessWidget {
  final String title;

  MealDetail(this.title);
  @override
  Widget build(BuildContext context) {
    final List icons = [
      {
        "iconId": 1,
        "iconLocation": "assets/icons/cheese_icon.png",
        "isSelected": false,
      },
      {
        "iconId": 2,
        "iconLocation": "assets/icons/cucumber_icon.png",
        "isSelected": false,
      },
      {
        "iconId": 3,
        "iconLocation": "assets/icons/jalapenos_icon.png",
        "isSelected": false,
      },
      {
        "iconId": 4,
        "iconLocation": "assets/icons/lettuce_icon.png",
        "isSelected": false,
      },
      {
        "iconId": 5,
        "iconLocation": "assets/icons/onion_icon.png",
        "isSelected": false,
      },
      {
        "iconId": 6,
        "iconLocation": "assets/icons/tomato_icon.png",
        "isSelected": false,
      },
    ];
    final List<dynamic> extras = [
      {
        "id": 1,
        "title": "Add Bacon (70 kcal)",
        "price": "AED 5",
        "isSelected": false,
      },
      {
        "id": 2,
        "title": "Add Cheese (120 kcal)",
        "price": "AED 3",
        "isSelected": false,
      },
      {
        "id": 3,
        "title": "No Sauce (-85 kcal)",
        "price": "AED 0",
        "isSelected": false,
      },
    ];

    toggleIsSelected(item) {
      item['isSelected'] != item['isSelected'];
    }

    extraClickedHandler(id) {
      var item = extras.firstWhere((element) => element['id'] == id);
      toggleIsSelected(item);
    }

    addToCartClickHandler(){
        // print("clickedd");
        //TODO navigate to cart page
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: ListView(
          children: [
            Column(
              children: [
                MealDetailHeader(),
                MealDetailInfo(),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Patty",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 95,
                        width: 165,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Double",
                              style: TextStyle(
                                fontFamily: 'Futura_Bold',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "864 kcal",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Ingredients",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.start,
                        children: [
                          ...icons
                              .map(
                                (icon) => HorizontalListItem(
                                  iconLocation: icon['iconLocation'],
                                  itemId: icon['iconId'],
                                  isItemClicked: icon['isSelected'],
                                  itemClicked: () => {},
                                ),
                              )
                              .toList(),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Extras",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.start,
                        children: [
                          ExtrasList(
                            extras: extras,
                            extraClickedHandler: extraClickedHandler,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Counter(),
                    CustomIconButton(text: "Add To Cart", icon: Icons.shopping_cart, clickHandler: addToCartClickHandler,)
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

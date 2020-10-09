import 'package:flutter/material.dart';

import './horizontal_list_item.dart';

class HorizontalList extends StatefulWidget {
  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    final List icons = [
      {
        "iconId": 1,
        "iconLocation": "assets/icons/burger_icon.png",
        "isClicked": false,
      },
      {
        "iconId": 2,
        "iconLocation": "assets/icons/potato_icon.png",
        "isClicked": false,
      },
      {
        "iconId": 3,
        "iconLocation": "assets/icons/hotdog_icon.png",
        "isClicked": false,
      },
      {
        "iconId": 4,
        "iconLocation": "assets/icons/icecream_icon.png",
        "isClicked": false,
      },
      {
        "iconId": 5,
        "iconLocation": "assets/icons/drink_icon.png",
        "isClicked": false,
      },
      {
        "iconId": 6,
        "iconLocation": "assets/icons/hotdog_icon.png",
        "isClicked": false,
      },
    ];

    void itemClicked(itemId) {
      var icon = icons.firstWhere((element) => element['iconId'] == itemId);
      this.setState(() {
        icon['isClicked'] = !icon['isClicked'];
      });
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...icons
              .map((icon) => HorizontalListItem(
                    iconLocation: icon['iconLocation'],
                    itemId: icon['iconId'],
                    isItemClicked: icon['isClicked'],
                    itemClicked: itemClicked,
                  ))
              .toList(),
        ],
      ),
    );
  }
}

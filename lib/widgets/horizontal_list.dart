import 'package:flutter/material.dart';

import './horizontal_list_item.dart';

class HorizontalList extends StatefulWidget {
  List<dynamic> icons;

  HorizontalList(this.icons);

  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    void itemClicked(itemId) {
      var icon =
          widget.icons.firstWhere((element) => element['iconId'] == itemId);
      this.setState(() {
        icon['isClicked'] = !icon['isClicked'];
      });
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...widget.icons
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

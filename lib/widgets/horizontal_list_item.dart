import 'package:flutter/material.dart';

class HorizontalListItem extends StatelessWidget {
  final String iconLocation;
  final int itemId;
  final bool isItemClicked;
  final Function itemClicked;

  HorizontalListItem({
    this.iconLocation,
    this.itemId,
    this.itemClicked,
    this.isItemClicked,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => itemClicked(itemId),
      child: Container(
        margin: EdgeInsets.all(10),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: isItemClicked ? Colors.green : Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Image.asset(iconLocation),
      ),
    );
  }
}

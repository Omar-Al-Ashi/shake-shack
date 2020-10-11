import 'package:flutter/material.dart';

class HorizontalListItem extends StatefulWidget {
  final String iconLocation;
  final int itemId;
  final bool isItemClicked;
  final Function itemClicked;

  HorizontalListItem({
    this.iconLocation,
    this.itemId,
    this.itemClicked,
    this.isItemClicked = false,
  });

  @override
  _HorizontalListItemState createState() => _HorizontalListItemState();
}

class _HorizontalListItemState extends State<HorizontalListItem> {
  @override
  Widget build(BuildContext context) {
    print(widget.isItemClicked);
    return InkWell(
      onTap: () => widget.itemClicked(widget.itemId),
      child: Container(
        margin: EdgeInsets.all(10),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.isItemClicked ? Colors.green : Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Image.asset(widget.iconLocation),
      ),
    );
  }
}

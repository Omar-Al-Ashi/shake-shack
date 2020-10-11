import 'package:flutter/material.dart';

class ExtrasListItem extends StatefulWidget {
  final String title;
  final String price;
  final int id;
  bool isSelected;
  Function extraClickedHandler;

  ExtrasListItem({
    this.title,
    this.price,
    this.isSelected,
    this.extraClickedHandler,
    this.id,
  });

  @override
  _ExtrasListItemState createState() => _ExtrasListItemState();
}

class _ExtrasListItemState extends State<ExtrasListItem> {
//   bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CheckboxListTile(
        checkColor: Colors.white,
        activeColor: Colors.green,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title),
            Text(widget.price),
          ],
        ),
        value: widget.isSelected,
        onChanged: (bool value) {
          this.setState(() {
            widget.isSelected = value;
          });
          widget.extraClickedHandler(widget.id);
        },
      ),
    );
  }
}

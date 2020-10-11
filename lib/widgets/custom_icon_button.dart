import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function clickHandler;

  CustomIconButton({this.icon, this.text, this.clickHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 186,
      child: RaisedButton.icon(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.green,
        icon: Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
        label: Text(
          "Add to cart",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: () => {clickHandler()},
      ),
    );
  }
}

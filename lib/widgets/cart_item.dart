import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String image;
  final String burgerName;
  final String price;

  CartItem({this.burgerName, this.image, this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Color(0x99575757),
      child: ListTile(
        leading: Image.asset(image),
        title: Text(
          burgerName,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        trailing: Text(
          price,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

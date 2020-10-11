import 'package:flutter/material.dart';
import './cart_item.dart';

class CartList extends StatelessWidget {
  List cartItems = [
    {
      "burgerName": "Shack Burger",
      "imageLocation": "assets/images/burger3.png",
      "price": "AED 42",
    },
    {
      "burgerName": "Shack Burger",
      "imageLocation": "assets/images/burger2.png",
      "price": "AED 42",
    },
    {
      "burgerName": "Shack Burger",
      "imageLocation": "assets/images/burger4.png",
      "price": "AED 42",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...cartItems
            .map(
              (cartItem) => CartItem(
                  burgerName: cartItem["burgerName"],
                  image: cartItem["imageLocation"],
                  price: cartItem["price"]),
            )
            .toList()
      ],
    );
  }
}

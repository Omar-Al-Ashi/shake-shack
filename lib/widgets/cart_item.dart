import 'package:flutter/material.dart';
import 'package:shake_shack/widgets/counter.dart';

class CartItem extends StatefulWidget {
  final String image;
  final String burgerName;
  final String price;

  CartItem({this.burgerName, this.image, this.price});

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  bool isExpanded = false;

  toggleExpandCard() {
    setState(() {
      isExpanded != isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Card(
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(20),
    //   ),
    //   color: Color(0x99575757),
    //   child: ListTile(
    //     onTap: () => toggleExpandCard,
    //     leading: Container(
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(20),
    //         border: Border.all(color: Colors.white),
    //       ),
    //       child: Image.asset(
    //         widget.image,
    //         height: 40,
    //         width: 45,
    //       ),
    //     ),
    //     title: Text(
    //       widget.burgerName,
    //       style: TextStyle(
    //         color: Colors.white,
    //       ),
    //     ),
    //     trailing: Text(
    //       widget.price,
    //       style: TextStyle(
    //         color: Colors.white,
    //       ),
    //     ),
    //   ),
    // );
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Color(0x99575757),
      child: ExpansionTile(
        backgroundColor: Color(0x99575757),
        trailing: Text(
          widget.price,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white),
          ),
          child: Image.asset(
            widget.image,
            height: 40,
            width: 45,
          ),
        ),
        title: Text(
          widget.burgerName,
          style: TextStyle(
            color: Colors.white,
          ),
        ),

        // subtitle: Text("  Sub Title's"),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "No Lettuce",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "No Onions",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "No Tomatoes",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Counter(),
            ],
          )
        ],
      ),
    );
  }
}

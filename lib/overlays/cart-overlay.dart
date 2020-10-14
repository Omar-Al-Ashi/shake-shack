import 'package:flutter/material.dart';
import 'package:shake_shack/widgets/checkbox_list_tile_list.dart';

import '../widgets/cart_list.dart';
import '../widgets/custom_textfield.dart';

class CartOverlay extends StatefulWidget {
  final Function exitCartOverlay;

  CartOverlay(this.exitCartOverlay);

  @override
  _CartOverlayState createState() => _CartOverlayState();
}

class _CartOverlayState extends State<CartOverlay> {
  final List checkboxListTileList = [
    "Save Instructions",
    "No Cutlery",
    "Contactless Delivery"
  ];

  String specialInstruction = "";

  void specialInstructionOnChangeHandler(newValue) {
    setState(() {
      specialInstruction = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return ListView(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black87,
          ),
          height: deviceHeight - 100,
          width: deviceWidth - 100,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Cart",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "4 items",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: new Icon(Icons.arrow_downward),
                      color: Colors.white,
                      onPressed: () => widget.exitCartOverlay(),
                    ),
                  ],
                ),
                CartList(),
                SizedBox(
                  height: 15,
                ),
                const Divider(color: Colors.white),
                Text(
                  "Special Instructions",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.blueAccent),
                    // color: Colors.white,
                  ),
                  child: CustomTextField(
                      specialInstructionOnChangeHandler:
                          specialInstructionOnChangeHandler),
                ),
                const Divider(color: Colors.white),
                CheckboxListTileList(checkboxListTileList),
                const Divider(color: Colors.white),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "AED 39",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 123,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.green,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Checkout",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () => {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

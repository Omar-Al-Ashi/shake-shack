import 'package:flutter/material.dart';

class MostOrdered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
        margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(25.0)
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Image.asset(
                  "assets/images/diagonal_background.png",
                  fit: BoxFit.cover,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Most ordered",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Chick’n Shack",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "Crissssssssspy. ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "AED 42",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/images/burger1.png",
              fit: BoxFit.cover,
              width: 200,
              height: 110,
            ),
          ),
        ],
      ),
    );
  }
}

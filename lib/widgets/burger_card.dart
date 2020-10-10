import 'package:flutter/material.dart';

class BurgerCard extends StatelessWidget {
  String imageLocation = "";
  String burgerName = "";
  String burgerCaption = "";
  String burgerPrice = "";
  Function cardClicked;

  BurgerCard({
    this.imageLocation,
    this.burgerName,
    this.burgerCaption,
    this.burgerPrice,
    this.cardClicked,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () => cardClicked(burgerName),
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Container(
          margin: EdgeInsets.all(20),
          width: 154,
          child: new Stack(
            children: <Widget>[
              Center(
                child: Container(
                  // color: Colors.green,
                  width: 154,
                  height: 179.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          burgerName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                        Text(
                          burgerCaption,
                          style: TextStyle(fontSize: 11),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          burgerPrice,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 8),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              FractionalTranslation(
                translation: Offset(0.0, -0.4),
                child: Align(
                  child: Image.asset(imageLocation),
                  alignment: FractionalOffset(0.5, 0.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

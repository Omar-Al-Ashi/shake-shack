import 'package:flutter/material.dart';
import 'package:shake_shack/api/api.dart';

class MostOrdered extends StatefulWidget {
  @override
  _MostOrderedState createState() => _MostOrderedState();
}

class _MostOrderedState extends State<MostOrdered> {
  var mostOrdered;
  bool isLoading = false;
  @override
  void initState() {
    setState(() {
      isLoading = true;
    });
    API.getMostOrdered().then((response) => {
          isLoading = false,
          setMostOrdered(response),
        });
    super.initState();
  }

  setMostOrdered(response) {
    setState(() {
      mostOrdered = response[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(25.0)),
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
                                mostOrdered["title"],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                mostOrdered["description"],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                mostOrdered["price"],
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
                    mostOrdered["image"],
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

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF4F4F4),
        border: Border.all(color: Colors.black, width: 1.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            height: 46,
            width: 37,
            child: RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              onPressed: () => {
                this.setState(() {
                  if (counter != 0) counter--;
                })
              },
              child: Text("-"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            child: Text(counter.toString()),
          ),
          Container(
            height: 46,
            width: 37,
            child: RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              onPressed: () => {
                this.setState(() {
                  counter++;
                })
              },
              child: Text("+"),
            ),
          ),
        ],
      ),
    );
  }
}

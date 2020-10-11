import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  bool isChecked = false;
  String title;

  CustomListTile(this.title);

  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  toggleIsChecked(newValue) {
    setState(() {
      widget.isChecked = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(unselectedWidgetColor: Colors.white),
      child: CheckboxListTile(
        checkColor: Colors.white,
        activeColor: Color(0xff55A335),
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onChanged: (bool value) => toggleIsChecked(value),
        value: widget.isChecked,
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}

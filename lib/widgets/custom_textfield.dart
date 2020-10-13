import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final Function specialInstructionOnChangeHandler;

  const CustomTextField({
    this.specialInstructionOnChangeHandler,
   
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return new Theme(
      data: new ThemeData(
        primaryColor: Colors.white,
        primaryColorDark: Colors.white,
        accentColor: Colors.white,
      ),
      child: TextField(
        onChanged: (newValue) => widget.specialInstructionOnChangeHandler(newValue),
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            fillColor: Colors.white,
            labelStyle: TextStyle(
              color: Colors.white,
            )),
      ),
    );
  }
}

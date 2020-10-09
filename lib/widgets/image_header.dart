import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.05,
          child: Image.asset(
            'assets/images/burgers.png',
            fit: BoxFit.cover,
          ),
        ),
        Image.asset(
          'assets/images/shake_burgers.png',
          fit: BoxFit.none,
          height: 80,
          width: double.infinity,
        )
      ],
    );
  }
}

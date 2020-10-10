import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isBack;
  const CustomAppBar({
    this.isBack,
    Key key,
  }) : super(key: key);

  @override
  Size get preferredSize {
    return new Size.fromHeight(kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: isBack ? const Icon(Icons.arrow_back) : const Icon(Icons.menu),
        color: Colors.black,
        onPressed: () {
            isBack? Navigator.of(context).pop() : null;
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: Image.asset('assets/icons/mic_icon.png'),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.search),
          color: Colors.black,
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset('assets/icons/dials_icon.png'),
          onPressed: () {},
        ),
      ],
      title: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Order To",
              style: TextStyle(
                color: Color(0xff55A335),
                fontSize: 11,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Jumeirah Lake Towers",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './extras_list_item.dart';

class ExtrasList extends StatelessWidget {
  final List extras;
  final Function extraClickedHandler;

  ExtrasList({
    this.extras,
    this.extraClickedHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...extras
            .map(
              (extra) => ExtrasListItem(
                title: extra["title"],
                price: extra["price"],
                isSelected: extra['isSelected'],
                id: extra['id'],
                extraClickedHandler: extraClickedHandler,
              ),
            )
            .toList()
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shake_shack/widgets/custom_list_tile.dart';

class CheckboxListTileList extends StatefulWidget {
  final List checkboxListTileList;

  CheckboxListTileList(this.checkboxListTileList);

  @override
  _CheckboxListTileListState createState() => _CheckboxListTileListState();
}

class _CheckboxListTileListState extends State<CheckboxListTileList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...widget.checkboxListTileList
            .map((item) => CustomListTile(item))
            .toList()
      ],
    );
  }
}

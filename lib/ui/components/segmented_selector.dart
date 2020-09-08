import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SegmentedSelector extends StatelessWidget {
  SegmentedSelector({Key key, this.menuOptions, this.selectOption, this.onvalueChanged});

  final List<dynamic> menuOptions;
  final String selectOption;
  final void Function(dynamic) onvalueChanged;

  

  @override
  Widget build(BuildContext context) {
    return CupertinoSegmentedControl(
      groupValue: selectOption,
      children: Map.fromIterable(
        menuOptions,
        key:(option) => option.key,
        value:(option)=> Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(option.icon),
            SizedBox(width :6),
            Text(option.value)
          ],
        )
      ), onValueChanged: onvalueChanged);
  }
}
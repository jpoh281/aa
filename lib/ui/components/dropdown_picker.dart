import 'package:flutter/material.dart';

class DropdownPicker extends StatelessWidget {
  DropdownPicker({Key key, this.menuOptions, this.selectOption, this.onChanged});

  final List<dynamic> menuOptions;
  final String selectOption;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(items: menuOptions.map((data) => DropdownMenuItem<String>(
      child: Text(data.value),
      value: data.key,
    )).toList(),
    value: selectOption, 
    onChanged: onChanged);
  }
}
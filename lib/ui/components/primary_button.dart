import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  /*
PrimaryButton(
                labelText: 'UPDATE',
                onPressed: () => print('Submit'),
              ),
*/

  final String labelText;
  final void Function() onPressed;

  PrimaryButton({this.labelText, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      padding: EdgeInsets.all(22),
      child: Text(
        labelText.toUpperCase(),
        style: TextStyle(fontWeight : FontWeight.bold),
      ),
    );
  }
}
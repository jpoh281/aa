import 'package:flutter/material.dart';
/*
FormInputFieldWithIcon(
                controller: _email,
                iconPrefix: Icons.link,
                labelText: 'Post URL',
                validator: Validator.notEmpty,
                keyboardType: TextInputType.multiline,
                minLines: 3,
                onChanged: (value) => print('changed'),
                onSaved: (value) => print('implement me'),
              ),
*/
class FormInputFieldWithIcon extends StatelessWidget {
  final TextEditingController controller;
  final IconData iconPrefix;
  final String labelText;
  final String Function(String) validator;
  final TextInputType keyboardType;
  final bool obscureText;
  final int minLines;
  final int maxLines;
  final void Function(String) onChanged;
  final void Function(String) onSaved;

  FormInputFieldWithIcon({this.controller, this.iconPrefix, this.labelText, this.validator, this.keyboardType, this.obscureText = false, this.minLines, this.maxLines, this.onChanged, this.onSaved});




  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        prefixIcon: Icon(iconPrefix),
        labelText:labelText,
      ),
      controller: controller,
      onSaved: onSaved,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      minLines: minLines,
      validator: validator,
    );
  }
}
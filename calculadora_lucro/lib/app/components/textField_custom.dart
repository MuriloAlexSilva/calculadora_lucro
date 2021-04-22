import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final Icon icon;

  const TextFieldCustom(
      {Key key, this.controller, this.label, this.hint, this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: label,
            hintText: hint,
            prefixIcon: icon),
      ),
    );
  }
}

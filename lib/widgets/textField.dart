import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextStyle? labelStyle;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final bool obscureText;
  final double fontSize;
  final bool multipleLines;
  final InputDecoration inputDecoration = InputDecoration(
    alignLabelWithHint: true,
    contentPadding: EdgeInsets.only(top: 15, bottom: 5),
  );

  CustomTextField({
    Key? key,
    this.controller,
    this.labelStyle,
    required this.labelText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.multipleLines = false,
    this.fontSize = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // DEFUALT VALUES
    int _lines = multipleLines ? 5 : 1;

    return TextField(
      controller: this.controller,
      keyboardType: this.keyboardType,
      obscureText: this.obscureText,
      style: TextStyle(
        fontSize: fontSize,
      ),
      maxLines: _lines,
      decoration: InputDecoration(
        labelText: this.labelText,
        labelStyle: this.labelStyle ??
            TextStyle(
              fontSize: fontSize,
            ),
        contentPadding: EdgeInsets.only(top: 15, bottom: 5),
        alignLabelWithHint: true,
      ),
    );
  }
}

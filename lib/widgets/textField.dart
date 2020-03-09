import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextStyle labelStyle;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final bool obscureText;
  final double fontSize;
  final bool multipleLines;
  final InputDecoration inputDecoration = InputDecoration(
    alignLabelWithHint: true,
    contentPadding: EdgeInsets.only(top: 15, bottom: 5),
  );

  CustomTextField({
    Key key,
    this.controller,
    this.labelStyle,
    this.labelText,
    this.keyboardType,
    this.obscureText,
    this.multipleLines,
    this.fontSize,
  }) : super(key: key) {
    assert(this.labelText != null);
  }

  @override
  Widget build(BuildContext context) {
    // DEFUALT VALUES
    double _fontsize = fontSize != null ? fontSize : 20;
    int _lines = multipleLines != null ? 5 : 1;

    return TextField(
      controller: this.controller,
      keyboardType: this.keyboardType,
      obscureText: this.obscureText == null ? false : this.obscureText,
      style: TextStyle(
        fontSize: _fontsize,
      ),
      maxLines: _lines,
      decoration: InputDecoration(
        labelText: this.labelText,
        labelStyle: this.labelStyle != null
            ? this.labelStyle
            : TextStyle(
                fontSize: _fontsize,
              ),
        contentPadding: EdgeInsets.only(top: 15, bottom: 5),
        alignLabelWithHint: true,
      ),
    );
  }
}

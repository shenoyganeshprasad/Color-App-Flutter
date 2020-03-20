import 'package:flutter/material.dart';

class ColorContainer extends StatelessWidget {
  final Color bgColor;
  final String hexValue;
  ColorContainer({@required this.bgColor, @required this.hexValue});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: bgColor,
        child: Center(
          child: Text(
            "#" + hexValue,
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}

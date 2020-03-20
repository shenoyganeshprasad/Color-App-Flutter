import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorContainer extends StatelessWidget {
  final Color bgColor;
  final String hexValue;
  final snackBar = SnackBar(
    behavior: SnackBarBehavior.floating,
    content: Text('Copied to Clipboard'),
  );
  ColorContainer({@required this.bgColor, @required this.hexValue});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: bgColor,
        child: Center(
          child: Opacity(
            opacity: 0.8,
            child: GestureDetector(
              onLongPress: () {
                Clipboard.setData(new ClipboardData(text: hexValue));
                Scaffold.of(context).showSnackBar(snackBar);
              },
              child: Text(
                "#" + hexValue,
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: 32.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

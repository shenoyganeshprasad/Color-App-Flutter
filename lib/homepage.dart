import 'package:color_app/randomcolor.dart';
import 'package:flutter/material.dart';
import 'package:color_app/widgets/colorcontainer.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var color1, color2, color3;
  String hexValue1, hexValue2, hexValue3;
  int startIndex = 10;
  int endIndex = 16;
  @override
  void initState() {
    color1 = generateRandomColor();
    hexValue1 = color1.toString().substring(startIndex, endIndex).toUpperCase();

    color2 = generateRandomColor();
    hexValue2 = color2.toString().substring(startIndex, endIndex).toUpperCase();

    color3 = generateRandomColor();
    hexValue3 = color3.toString().substring(startIndex, endIndex).toUpperCase();
    super.initState();
  }

  void uniqueColor() {
    color1 = generateRandomColor();
    hexValue1 = color1.toString().substring(startIndex, endIndex).toUpperCase();

    color2 = generateRandomColor();
    hexValue2 = color2.toString().substring(startIndex, endIndex).toUpperCase();

    color3 = generateRandomColor();
    hexValue3 = color3.toString().substring(startIndex, endIndex).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ColorContainer(bgColor: color1, hexValue: hexValue1),
          ColorContainer(bgColor: color2, hexValue: hexValue1),
          ColorContainer(bgColor: color3, hexValue: hexValue1),
          GestureDetector(
            onTap: () {
              setState(() {
                uniqueColor();
              });
            },
            child: Container(
              width: double.infinity,
              height: 80.0,
              color: Colors.orangeAccent,
              child: Center(
                  child: Text(
                'Generate',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'BLUE',
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.green,
              child: Center(
                child: Text(
                  'GREEN',
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text(
                  'RED',
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
          ),
          GestureDetector(
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

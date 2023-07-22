import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 35, bottom: 15),
        child: Text(
          'WTF',
          style: TextStyle(
            fontSize: 65,
            color: Color(0xff1AC3A9),
            fontFamily: 'WaterLily',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

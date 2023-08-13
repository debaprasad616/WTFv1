import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomButton({String? text,onPress}){
  return  ElevatedButton(
    onPressed: onPress,
    style: ElevatedButton.styleFrom(
      primary: Color(0xff1AC3A9),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 0,
      fixedSize: Size.fromHeight(48),
    ),
    child: Text(
      text!,
      style: TextStyle(
        color: Color(0xfff2f1ec),
        fontWeight: FontWeight.bold,
        fontSize: 19.0,
      ),
    ),
  );
}
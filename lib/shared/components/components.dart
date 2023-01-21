import 'package:flutter/material.dart';

Widget DefaultButton({
  required String text,
  required Function onPressed,
  double width = double.infinity,
  Color color = Colors.blue,
  double radius = 7.0,
  bool isUpperCase = false

})=>
    Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: color,
      ),
      //color: Colors.blue,
      child: MaterialButton(
        child: Text(
          isUpperCase ? '${text.toUpperCase()}':'$text',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: onPressed(),
      ),
    );
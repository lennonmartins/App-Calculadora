import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  final Function onPressed;

  CalcButton(
      {required this.text,
      required this.buttonColor,
      required this.textColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 30,
            color: textColor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: buttonColor,
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}

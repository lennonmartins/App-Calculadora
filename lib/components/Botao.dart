import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  final Function onPressed;

  const CalcButton(
      {super.key,
      required this.text,
      required this.buttonColor,
      required this.textColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: buttonColor,
        padding: const EdgeInsets.all(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 30,
          color: textColor,
        ),
      ),
    );
  }
}

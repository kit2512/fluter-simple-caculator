import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String character;
  final Function onPressed;
  final bool? rounded;
  final Color fillColor;
  final Color textColor;
  final Color outlineColor;
  final double? borderWidth;

  const CalcButton({
    Key? key,
    required this.character,
    required this.onPressed,
    this.rounded = false,
    this.fillColor = const Color(0xff35373B),
    this.textColor = const Color(0xffffffff),
    this.outlineColor = const Color(0xff4B4D51),
    this.borderWidth = 2.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: outlineColor, width: borderWidth ?? 2.0),
        backgroundColor: fillColor,
        shape: rounded == true ? const CircleBorder() : null,
      ),
      onPressed: () => onPressed(character),
      child: Text(
        character,
        style: TextStyle(
          fontSize: 42,
          color: textColor,
        ),
      ),
    );
  }
}

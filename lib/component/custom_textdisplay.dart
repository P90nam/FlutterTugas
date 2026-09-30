import 'package:flutter/material.dart';

class CustomTextdisplay extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final int? maxLines;
  final TextOverflow overflow;

  const CustomTextdisplay({
    super.key,
    required this.text,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.w500,
    this.color = Colors.black,
    this.maxLines = 2,
    this.overflow = TextOverflow.ellipsis,
  });

  factory CustomTextdisplay.title(String text) {
    return CustomTextdisplay(
      text: text,
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      maxLines: 2,
    );
  }

  factory CustomTextdisplay.subtitle(String text) {
    return CustomTextdisplay(
      text: text,
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade700,
      maxLines: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: 0.1,
      ),
    );
  }
}
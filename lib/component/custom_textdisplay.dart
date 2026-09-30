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

  // Helper untuk Judul Video (Lebih tebal dan besar)
  factory CustomTextdisplay.title(String text) {
    return CustomTextdisplay(
      text: text,
      fontSize: 16.0,
      fontWeight: FontWeight.w600, // Semi-bold
      maxLines: 2,
    );
  }

  // Helper untuk Nama Channel / Views (Lebih kecil dan abu-abu)
  factory CustomTextdisplay.subtitle(String text) {
    return CustomTextdisplay(
      text: text,
      fontSize: 12.0,
      fontWeight: FontWeight.w400, // Regular
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
        // YouTube menggunakan font standar sistem (Roboto di Android).
        // letterSpacing kecil membuat teks terlihat lebih rapat dan rapi.
        letterSpacing: 0.1, 
      ),
    );
  }
}
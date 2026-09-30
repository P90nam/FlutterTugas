import 'package:flutter/material.dart';

class YouTubeMark extends StatelessWidget {
  const YouTubeMark();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(Icons.play_arrow, color: Colors.white, size: 28),
    );
  }
}
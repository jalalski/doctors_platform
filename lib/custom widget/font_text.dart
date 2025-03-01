import 'package:flutter/material.dart';

class TextFont extends StatelessWidget {
  final String text;
  final bool bold;
  final double size;
  final Color color;

  const TextFont({
    super.key,
    required this.text,
    required this.bold,
    required this.size,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}

import 'package:doctors_platform/custom%20widget/font_text.dart';
import 'package:flutter/material.dart';

class TextButtonDrawerSide extends StatefulWidget {
  final VoidCallback fanction;

  final String text;
  final Icon icon;
  const TextButtonDrawerSide({
    super.key,
    required this.text,
    required this.icon,
    required this.fanction,
  });

  @override
  State<TextButtonDrawerSide> createState() => _TextButtonDrawerSideState();
}

class _TextButtonDrawerSideState extends State<TextButtonDrawerSide> {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: widget.fanction,
      label: TextFont(
        text: widget.text,
        bold: false,
        size: 20,
        color: Colors.blue,
      ),
      icon: widget.icon,
    );
  }
}

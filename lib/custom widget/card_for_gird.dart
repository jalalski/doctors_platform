import 'package:doctors_platform/custom%20widget/font_text.dart';
import 'package:flutter/material.dart';

class CardForGird extends StatelessWidget {
  final String text01, text02;
  const CardForGird({super.key, required this.text01, required this.text02});

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: Card(
        color: Colors.white,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFont(text: text01, bold: true, size: 20, color: Colors.black),
            TextFont(text: text02, bold: false, size: 15, color: Colors.black),
          ],
        ),
      ),
    );
  }
}

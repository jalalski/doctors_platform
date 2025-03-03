import 'package:flutter/material.dart';

class RitchText extends StatelessWidget {
  final String text01;
  final String text02;
  const RitchText({super.key, required this.text01, required this.text02});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "$text01 DZ\n",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          TextSpan(
            text: text02,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

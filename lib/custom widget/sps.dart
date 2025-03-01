import 'package:flutter/material.dart';

class Sps extends StatelessWidget {
  final double hight;
  const Sps({super.key, required this.hight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: hight);
  }
}

import 'package:doctors_platform/custom%20widget/font_text.dart';
import 'package:doctors_platform/custom%20widget/ritch_text.dart';
import 'package:flutter/material.dart';

class HospitolServiceBanare extends StatefulWidget {
  const HospitolServiceBanare({super.key});
  @override
  State<HospitolServiceBanare> createState() => _HospitolServiceBanareState();
}

class _HospitolServiceBanareState extends State<HospitolServiceBanare> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFont(
            text: "Hospitol Service",
            bold: true,
            size: 20,
            color: Colors.black,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RitchText(text01: "18,000", text02: "Today incame"),
              RitchText(text01: "150,000", text02: "This week incame"),
              RitchText(text01: "5,200,000", text02: "This month incame"),
              RitchText(text01: "60,000,000", text02: "This year incame"),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}

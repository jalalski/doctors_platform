import 'package:doctors_platform/custom%20widget/card_for_gird.dart';
import 'package:doctors_platform/custom%20widget/hospitol_service_banare.dart';
import 'package:flutter/material.dart';

class DachboradPage extends StatelessWidget {
  const DachboradPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            height: 250,

            child: GridView(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 250,
                crossAxisCount: 4,

                crossAxisSpacing: 12,
              ),
              children: [
                CardForGird(text01: "18,000", text02: "Today incame"),
                CardForGird(text01: "150,000", text02: "This week incame"),
                CardForGird(text01: "5,200,000", text02: "This month incame"),
                CardForGird(text01: "60,000,000", text02: "This year incame"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            height: 500,
            width: double.infinity,
            child: Card(color: Colors.white, child: HospitolServiceBanare()),
          ),
        ],
      ),
    );
  }
}

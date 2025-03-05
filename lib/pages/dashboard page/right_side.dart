import 'package:doctors_platform/custom%20widget/card_for_gird.dart';
import 'package:doctors_platform/custom%20widget/hospitol_service_banare.dart';
import 'package:flutter/material.dart';

class RightSide extends StatelessWidget {
  const RightSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            height: 100,

            child: Card(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SearchBar(
                        hintText: "Search test",
                        backgroundColor: WidgetStatePropertyAll(
                          Colors.grey[200],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                      IconButton(onPressed: () {}, icon: CircleAvatar()),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
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

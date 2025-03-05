import 'package:doctors_platform/custom%20widget/sps.dart';
import 'package:doctors_platform/custom%20widget/text_button_drawer_side.dart';
import 'package:flutter/material.dart';

class LeftSide extends StatelessWidget {
  const LeftSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(child: Image.asset(""), height: 200),
        Divider(color: Colors.grey[300], height: 5),
        //text side
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Sps(hight: 20),
            TextButtonDrawerSide(text: "Dashboard", icon: Icon(Icons.home)),
            Sps(hight: 20),
            TextButtonDrawerSide(
              text: "Add a new customer",
              icon: Icon(Icons.add),
            ),
            Sps(hight: 20),
            TextButtonDrawerSide(
              text: "the last Page",
              icon: Icon(Icons.upcoming),
            ),
          ],
        ),
      ],
    );
  }
}

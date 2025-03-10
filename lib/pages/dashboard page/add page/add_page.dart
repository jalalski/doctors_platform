import 'package:doctors_platform/custom%20widget/font_text.dart';
import 'package:doctors_platform/main_page.dart';

import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return MainPage(
      rightSide: Column(
        children: [
          TextFont(
            text: "Please enter custmer's information",
            bold: true,
            size: 50,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

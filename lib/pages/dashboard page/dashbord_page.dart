import 'package:doctors_platform/pages/dashboard%20page/left_side.dart';
import 'package:doctors_platform/pages/dashboard%20page/right_side.dart';
import 'package:flutter/material.dart';

class DashbordPage extends StatefulWidget {
  const DashbordPage({super.key});
  @override
  State<DashbordPage> createState() => _DashbordPageState();
}

class _DashbordPageState extends State<DashbordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(flex: 2, child: LeftSide()),

          Expanded(flex: 7, child: RightSide()),
        ],
      ),
    );
  }
}

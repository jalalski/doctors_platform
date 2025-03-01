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
      body: Column(
        children: [Text("CAMING SOON!", style: TextStyle(fontSize: 100))],
      ),
    );
  }
}

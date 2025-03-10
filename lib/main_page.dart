import 'package:doctors_platform/pages/dashboard%20page/left_side.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  final Widget rightSide;
  const MainPage({super.key, required this.rightSide});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 2, child: LeftSide()),
          Expanded(
            flex: 7,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                toolbarHeight: 150,
                title: SearchBar(
                  hintText: "Search test",
                  backgroundColor: WidgetStatePropertyAll(Colors.grey[200]),
                ),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                  IconButton(onPressed: () {}, icon: CircleAvatar()),
                ],
              ),

              body: widget.rightSide,
            ),
          ),
        ],
      ),
    );
  }
}

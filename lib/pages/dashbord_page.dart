import 'package:doctors_platform/custom%20widget/sps.dart';
import 'package:doctors_platform/custom%20widget/text_button_drawer_side.dart';
import 'package:flutter/material.dart';

class DashbordPage extends StatefulWidget {
  const DashbordPage({super.key});
  @override
  State<DashbordPage> createState() => _DashbordPageState();
}

class _DashbordPageState extends State<DashbordPage> {
  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          // left drawer expanded
          Expanded(
            flex: 1,
            child: Column(
              children: [
                // logo side
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                    //child: Image.asset("name"),
                  ),
                ),
                Divider(color: Colors.grey[300], height: 5),
                //text side
                Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Sps(hight: 20),
                      TextButtonDrawerSide(
                        text: "Dashboard",
                        icon: Icon(Icons.home),
                      ),
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
                ),
              ],
            ),
          ),
          // right drawer expanded
          Expanded(
            flex: 4,
            child: Container(color: Colors.grey, child: Column()),
          ),
        ],
      ),
    );
  }
}

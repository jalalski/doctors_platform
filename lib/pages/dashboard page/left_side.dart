import 'package:doctors_platform/custom%20widget/sps.dart';
import 'package:doctors_platform/custom%20widget/text_button_drawer_side.dart';
import 'package:doctors_platform/main_page.dart';
import 'package:doctors_platform/pages/dashboard%20page/add%20page/add_page.dart';
import 'package:doctors_platform/pages/dashboard%20page/dachborad_page.dart';
import 'package:flutter/material.dart';

class LeftSide extends StatefulWidget {
  const LeftSide({super.key});

  @override
  State<LeftSide> createState() => _LeftSideState();
}

class _LeftSideState extends State<LeftSide> {
  bool addPage = false;
  bool dachbord = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(right: BorderSide(color: Colors.black)),
      ),

      child: Column(
        children: [
          SizedBox(
            height: 200, //child: Image.asset("")
          ),
          Divider(color: Colors.grey[300], height: 5),
          //text side
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Sps(hight: 20),
              TextButtonDrawerSide(
                fanction: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder:
                          (context) => MainPage(rightSide: DachboradPage()),
                    ),
                  );
                },
                text: "Dashboard",
                icon: Icon(Icons.home),
              ),
              Sps(hight: 20),
              TextButtonDrawerSide(
                fanction: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => AddPage()),
                  );
                },
                text: "Add a new customer",
                icon: Icon(Icons.add),
              ),
              Sps(hight: 20),
              TextButtonDrawerSide(
                fanction: () {},
                text: "the last Page",
                icon: Icon(Icons.upcoming),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

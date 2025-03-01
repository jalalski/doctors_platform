import 'package:doctors_platform/pages/dashbord_page.dart';
import 'package:flutter/material.dart';

class HollowPage extends StatefulWidget {
  const HollowPage({super.key});

  @override
  State<HollowPage> createState() => _HollowPageState();
}

class _HollowPageState extends State<HollowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return DashbordPage();
                  },
                ),
              );
            },
            minWidth: 300,

            color: Colors.blue[300],
            child: Text(
              "Dashbord Page",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 4,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            minWidth: 300,
            color: Colors.blue[300],
            child: Text(
              "Add a new customer",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 4,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            minWidth: 300,
            color: Colors.blue[300],
            child: Text(
              "the last Page",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

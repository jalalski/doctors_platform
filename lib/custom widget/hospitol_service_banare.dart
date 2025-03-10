import 'package:doctors_platform/custom%20widget/font_text.dart';
import 'package:doctors_platform/custom%20widget/sps.dart';
import 'package:doctors_platform/custom%20widget/text_button_drawer_side.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HospitolServiceBanare extends StatefulWidget {
  const HospitolServiceBanare({super.key});

  @override
  State<HospitolServiceBanare> createState() => _HospitolServiceBanareState();
}

class _HospitolServiceBanareState extends State<HospitolServiceBanare> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Selector<Modle, String>(
          selector: (context, modle) => modle.text01,
          builder: (context, value, child) {
            print("text 01");
            return TextFont(
              text: value,
              bold: true,
              size: 20,
              color: Colors.black,
            );
          },
        ),

        Selector<Modle, String>(
          selector: (context, modle) => modle.text02,
          builder: (context, value, child) {
            print("text 02");
            return TextFont(
              text: value,
              bold: true,
              size: 20,
              color: Colors.black,
            );
          },
        ),
        Sps(hight: 20),

        TextButtonDrawerSide(
          fanction: () {
            Provider.of<Modle>(context, listen: false).changeText01();
          },
          text: "change text 01",
          icon: Icon(Icons.one_k),
        ),
        Sps(hight: 20),

        TextButtonDrawerSide(
          fanction: () {
            Provider.of<Modle>(context, listen: false).changeText02();
          },
          text: "change text 01",
          icon: Icon(Icons.one_k),
        ),
      ],
    );
  }
}

class Modle extends ChangeNotifier {
  String text01 = 'first text';
  String text02 = 'second text';

  get showname01 => text01;
  get showname02 => text02;

  void changeText01() {
    text01 = "first text changed";
    notifyListeners();
  }

  void changeText02() {
    text02 = "second text changed";
    notifyListeners();
  }
}

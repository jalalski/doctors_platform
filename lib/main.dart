import 'package:doctors_platform/custom%20widget/hospitol_service_banare.dart';
import 'package:doctors_platform/main_page.dart';
import 'package:doctors_platform/pages/dashboard%20page/dachborad_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => Modle(), child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          actionsPadding: EdgeInsets.symmetric(horizontal: 50),
        ),
      ),
      home: MainPage(rightSide: DachboradPage()),
    );
  }
}

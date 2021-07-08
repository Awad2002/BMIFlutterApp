import 'package:flutter/material.dart';
import 'package:ibm_calculator/modules/home/homescreen.dart';
import 'package:ibm_calculator/modules/bmi_result/mbi_result_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

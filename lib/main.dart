import 'package:flutter/material.dart';
import 'package:state_management/pages/detail_page.dart';
import 'package:state_management/pages/home_page.dart';

void main() => runApp(
      FoodApp(),
    );

class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailPage(),
    );
  }
}

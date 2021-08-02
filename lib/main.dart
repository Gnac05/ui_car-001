import 'package:flutter/material.dart';
import 'package:ui_car_listview/screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car4Sell',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato',
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        canvasColor: Color(0xFF1B1D29),
        primaryColor: Color(0xFF1B1D29),
      ),
      home: Home()
    );
  }
}


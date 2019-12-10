import 'package:flutter/material.dart';
import './home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'SF Pro Display'),
      title: 'PLANETS',
      color: Colors.black,
      home: HomePage(),
    );
  }
}
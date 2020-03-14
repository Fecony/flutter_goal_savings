import 'package:flutter/material.dart';
// import 'package:flutter_goal_savings/screens/initial_screen.dart';
// import 'package:flutter_goal_savings/screens/settings_screen.dart';
import 'package:flutter_goal_savings/screens/polygon_drawing_util.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Goal Savings App',
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: PolygonDrawing(),
    );
  }
}

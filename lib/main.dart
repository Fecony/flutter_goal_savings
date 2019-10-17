import 'package:flutter/material.dart';
// import 'package:flutter_goal_savings/screens/initial_screen.dart';
import 'package:flutter_goal_savings/screens/triangle_test.dart';
// import 'package:flutter_goal_savings/screens/settings_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Goal Savings App',
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: TriangleTestScreen(),
      // home: SettingsScreen(),
    );
  }
}

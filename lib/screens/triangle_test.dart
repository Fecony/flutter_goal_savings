import 'package:flutter/material.dart';
import 'package:flutter_goal_savings/styleguide/colors.dart';
import 'package:flutter_goal_savings/widgets/rounded_triangle.dart';

class TriangleTestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: DrawTriangle(
          color: pinkTriangleColor,
          strength: 2,
          size: 250,
        ),
      ),
    );
  }
}

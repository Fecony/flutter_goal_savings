import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_goal_savings/styleguide/colors.dart';
import 'package:flutter_goal_savings/styleguide/text_styles.dart';
import 'package:flutter_goal_savings/widgets/black_btn.dart';
import 'package:flutter_goal_savings/widgets/rounded_triangle.dart';

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz, color: darkGrayColor),
            onPressed: () => print('settings'),
          ),
        ],
      ),
      body: Container(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Container(
              margin: new EdgeInsets.symmetric(horizontal: 30.0),
              child: Stack(
                children: [
                  Column(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          style: welcomeTextStyle,
                          children: <TextSpan>[
                            TextSpan(text: 'CLICK '),
                            TextSpan(
                              text: 'ADD NEW ',
                              style: welcomeTextStyle.copyWith(
                                color: primaryBlueColor,
                              ),
                            ),
                            TextSpan(text: 'TO START SAVING MONEY AND REACH '),
                            TextSpan(
                              text: 'YOUR ',
                              style: welcomeTextStyle.copyWith(
                                color: pinkTriangleColor,
                              ),
                            ),
                            TextSpan(text: 'GOALS'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 70,
                    left: 0,
                    right: 0,
                    child: BlackButton(
                      label: "ADD NEW",
                      onPressed: () => print('welcome add new'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

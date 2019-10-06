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
    return Container(
      color: generalWhiteColor,
      child: SafeArea(
        child: Stack(
          children: <Widget>[
            Transform.translate(
              offset: Offset(MediaQuery.of(context).size.width - 75, -30),
              child: Transform.rotate(
                angle: -pi / 2,
                child:
                    DrawTriangle(size: 110, color: lightGrayColor, radius: 1),
              ),
            ),
            SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () => print('settings'),
                        child: Icon(
                          Icons.more_horiz,
                          color: darkGrayColor,
                        ),
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 157,
                        ),
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
                              TextSpan(
                                  text: 'TO START SAVING MONEY AND REACH '),
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
                        SizedBox(
                          height: 372,
                        ),
                        BlackButton(
                          label: "ADD NEW",
                          onPressed: () => print('welcome add new'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

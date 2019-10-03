import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_goal_savings/styleguide/colors.dart';
import 'package:flutter_goal_savings/styleguide/text_styles.dart';

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(color: generalWhiteColor),
            child: Column(
              children: <Widget>[
                Align(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      child: FlatButton(
                        onPressed: () => print('Settings'),
                        child: Icon(
                          Icons.more_horiz,
                          color: darkGrayColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(color: Colors.red),
                            height: MediaQuery.of(context).size.height * .8,
                          ),
                          Row(
                            children: <Widget>[
                              // Text(
                              //   'Click '.toUpperCase(),
                              //   style: welcomeTextStyle,
                              // ),
                              // Text(
                              //   'ADD NEW ',
                              //   style: welcomeTextStyle.copyWith(
                              //     color: primaryBlueColor,
                              //   ),
                              // ),
                              // Text(
                              //   'to start saving money and Reach'.toUpperCase(),
                              //   style: welcomeTextStyle,
                              // )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

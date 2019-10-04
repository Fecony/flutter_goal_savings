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
            color: generalWhiteColor,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () => print('Settings'),
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
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: <Widget>[
                      Column(
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
                          RaisedButton(
                            color: mainDarkGrayColor,
                            onPressed: () => print('welcome add new'),
                            padding: EdgeInsets.all(25.0),
                            child: Row(
                              // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Text(
                                  "ADD NEW",
                                  style: addNewLightTextStyle,
                                ),
                                SizedBox(
                                  width: 190.0,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: generalWhiteColor,
                                ),
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                            ),
                          ),
                        ],
                      ),
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

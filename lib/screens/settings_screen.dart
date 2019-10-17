import 'package:flutter/material.dart';
import 'package:flutter_goal_savings/styleguide/colors.dart';
import 'package:flutter_goal_savings/styleguide/text_styles.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        title: Text('Settings', style: headerTextStyle),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close, color: lightGrayColor),
            onPressed: () => print('close'),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: generalWhiteColor,
        alignment: Alignment.center,
        child: SafeArea(
          child: Container(
            color: generalWhiteColor,
            margin: EdgeInsets.symmetric(horizontal: 40.0),
            constraints: BoxConstraints(
              maxHeight: 210,
            ),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () => print('language'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('LANGUAGE', style: settingsTitleTextStyle),
                      Text('EN', style: settingsValueTextStyle)
                    ],
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => print('currency'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('DEFAULT CURRENCY', style: settingsTitleTextStyle),
                      Text('\$', style: settingsValueTextStyle)
                    ],
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => print('order'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('GOAL SORT ORDER', style: settingsTitleTextStyle),
                      Icon(
                        Icons.sort_by_alpha,
                        color: lightGrayColor,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => print('theme'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('THEME', style: settingsTitleTextStyle),
                      Text('LIGHT', style: settingsValueTextStyle)
                    ],
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => print('save data to cloud'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Store data in cloud'.toUpperCase(),
                          style: settingsCloudTextStyle),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

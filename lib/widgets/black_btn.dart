import 'package:flutter/material.dart';
import 'package:flutter_goal_savings/styleguide/colors.dart';
import 'package:flutter_goal_savings/styleguide/text_styles.dart';

class BlackButton extends StatelessWidget {
  BlackButton({this.label, this.width, this.onPressed});

  final String label;

  final double width;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: mainDarkGrayColor,
      onPressed: onPressed ?? () => (print('default click')),
      padding: EdgeInsets.all(25.0),
      child: Row(
        children: <Widget>[
          Text(
            label ?? 'Default',
            style: addNewLightTextStyle,
          ),
          SizedBox(
            width: width ?? 10.0,
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
    );
  }
}

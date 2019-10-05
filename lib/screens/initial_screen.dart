import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_goal_savings/styleguide/colors.dart';
import 'package:flutter_goal_savings/styleguide/text_styles.dart';
import 'package:flutter_goal_savings/widgets/black_btn.dart';

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: SafeArea(
            child: Container(
              color: generalWhiteColor,
              child: Column(
                children: <Widget>[
                  Stack(
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
                              width: 190.0,
                              onPressed: () => print('welcome add new'),
                            ),
                          ],
                        ),
                      ),
                      // DrawTriangle(),
                    ],
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

class DrawTriangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey), // for testing
      child: CustomPaint(
        painter: TrianglePainter(),
        size: Size(200, 200),
      ),
    );
  }
}

// this shit is not going to work
class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = pinkTriangleColor
      ..isAntiAlias = true
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(size.width / 2, 0)
      ..conicTo(0, size.height, size.width / 2, size.height, 5)
      ..conicTo(size.width, size.height, size.width / 2, size.height / 2, 5);

    // ..lineTo(size.width, size.height)
    // ..conicTo(size.width, size.height, size.width, size.height, 1);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

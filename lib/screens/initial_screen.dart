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
                      Positioned(
                        left: MediaQuery.of(context).size.width - 80,
                        top: -35,
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: DrawTriangle(
                            size: 120,
                            color: lightGrayColor,
                            radius: 1,
                          ),
                        ),
                      ),
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
  final Color color;
  final double radius;
  final double size;

  DrawTriangle({this.color, this.radius, this.size});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TrianglePainter(color, radius),
      size: Size(size, size),
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color color;
  final double radius;

  TrianglePainter(this.color, this.radius);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color.withOpacity(0.45)
      ..isAntiAlias = true
      ..style = PaintingStyle.fill;

    final double offsetToCenter = 15.0;

    // Triangle dots
    final Offset pointA = Offset(size.width / 2, -offsetToCenter);
    final Offset pointB = Offset(0, size.height - offsetToCenter);
    final Offset pointC = Offset(size.width, size.height - offsetToCenter);

    // Distance between 2 dots
    final Offset dotAB = Offset(
      (pointA.dx + pointB.dx) / 2,
      (pointA.dy + pointB.dy) / 2,
    );
    final Offset dotBC = Offset(
      (pointB.dx + pointC.dx) / 2,
      (pointB.dy + pointC.dy) / 2,
    );
    final Offset dotCA = Offset(
      (pointC.dx + pointA.dx) / 2,
      (pointC.dy + pointA.dy) / 2,
    );

    Path path = Path()
      ..moveTo(dotAB.dx, dotAB.dy)
      ..conicTo(pointB.dx - 10, pointB.dy, dotBC.dx, dotBC.dy, radius)
      ..conicTo(pointC.dx + 10, pointC.dy, dotCA.dx, dotCA.dy, radius)
      ..conicTo(pointA.dx, pointA.dy + 10, dotAB.dx, dotAB.dy, radius);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

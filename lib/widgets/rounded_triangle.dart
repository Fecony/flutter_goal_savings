import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_goal_savings/styleguide/colors.dart';

class DrawTriangle extends StatelessWidget {
  final Color color;
  final double strength;
  final double size;

  DrawTriangle({this.color, this.strength, this.size});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TrianglePainter(color, strength),
      size: Size(size, size),
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color color;
  final double strength;

  TrianglePainter(this.color, this.strength);

  @override
  void paint(Canvas canvas, Size size) {
    Offset centerOffset = Offset(size.width / 2, size.height / 2);
    double distance = 1.2;

    Paint painty = Paint()
      ..color = pinkTriangleColor
      ..isAntiAlias = true
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;

    Paint paint = Paint()
      ..color = pinkTriangleColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 12.0
      ..style = PaintingStyle.fill;

    Paint paint2 = Paint()
      ..color = orangeTriangleColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 12.0
      ..style = PaintingStyle.fill;

    Paint paint3 = Paint()
      ..color = Colors.teal
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 12.0
      ..style = PaintingStyle.fill;

    Paint paint4 = Paint()
      ..color = Colors.blue
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8.0
      ..style = PaintingStyle.fill;

    Paint linePaint = Paint()
      ..color = Colors.lightGreen
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0
      ..style = PaintingStyle.fill;

    // Triangle dots
    Offset pointA = Offset(size.width / 2, 0);
    Offset pointB = Offset(0, size.height);
    Offset pointC = Offset(size.width, size.height);

    // Midpoint between 2 dots
    Offset dotAB =
        Offset((pointA.dx + pointB.dx) / 2, (pointA.dy + pointB.dy) / 2);
    Offset dotBC =
        Offset((pointB.dx + pointC.dx) / 2, (pointB.dy + pointC.dy) / 2);
    Offset dotCA =
        Offset((pointC.dx + pointA.dx) / 2, (pointC.dy + pointA.dy) / 2);

    Offset leftDOT = Offset(
      pointB.dx + centerOffset.dx / distance,
      pointB.dy - centerOffset.dy / distance,
    );
    Offset middleDOT = Offset(
      (pointA.dx + centerOffset.dx) / 2,
      (pointA.dy + centerOffset.dy) / distance,
    );
    Offset rightDOT = Offset(
      pointC.dx - centerOffset.dx / distance,
      pointC.dy - centerOffset.dy / distance,
    );

    // Offset oneThirdAB = Offset(
    //   pointB.dx + pointA.dx / 2,
    //   pointB.dy - pointA.dy / 40,
    // );

    // Path path = Path()
    //   ..moveTo(dotAB.dx, dotAB.dy)
    //   ..conicTo(
    //       leftDOT.dx - dist, leftDOT.dy + dist, dotBC.dx, dotBC.dy, distance)
    //   ..conicTo(
    //       rightDOT.dx + dist, rightDOT.dy + dist, dotCA.dx, dotCA.dy, distance)
    //   ..conicTo(
    //       middleDOT.dx, middleDOT.dy - dist, dotAB.dx, dotAB.dy, distance);

    // canvas.drawPath(path, paint);

    // canvas.drawLine(middleDOT, centerOffset, linePaint);
    // canvas.drawLine(
    //   leftDOT,
    //   centerOffset,
    //   Paint()
    //     ..color = Colors.cyan
    //     ..strokeWidth = 5.0,
    // );
    // canvas.drawLine(
    //   rightDOT,
    //   centerOffset,
    //   Paint()
    //     ..color = Colors.orange
    //     ..strokeWidth = 5.0,
    // );

    // canvas.drawCircle(centerOffset, 5, paint);
    // canvas.drawPoints(PointMode.points, [oneThirdAB], paint4);
    canvas.drawPoints(PointMode.points, [pointA, pointB, pointC], paint);
    canvas.drawPoints(PointMode.points, [dotAB, dotBC, dotCA], paint2);
    // canvas.drawPoints(PointMode.points, [leftDOT, rightDOT, middleDOT], paint3);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

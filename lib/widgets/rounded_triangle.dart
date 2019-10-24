import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_goal_savings/styleguide/colors.dart';

class DrawTriangle extends StatelessWidget {
  final Color color = pinkTriangleColor;
  final double strength = 2;
  final double size = 250;

  // DrawTriangle({this.color, this.strength, this.size});

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
    Paint paint = Paint()
      ..color = pinkTriangleColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 12.0
      ..style = PaintingStyle.stroke;

    Paint addDotPaint = Paint()
      ..color = cyanTriangleColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 12.0;

    // Triangle dots
    Offset a = Offset(size.width / 2, 0);
    Offset b = Offset(0, size.height);
    Offset c = Offset(size.width, size.height);

    double dist = 150.0;

    if (dist >= size.height / 2) {
      canvas.drawCircle(Offset(size.width / 2, size.height / 2), 80, paint);
    } else {
      Offset a1 = Offset(a.dx - dist / 2, a.dy + dist);
      Offset a2 = Offset(a.dx + dist / 2, a.dy + dist);

      Offset b1 = Offset(b.dx + dist / 2, b.dy - dist);
      Offset b2 = Offset(b.dx + dist, b.dy);

      Offset c1 = Offset(c.dx - dist, c.dy);
      Offset c2 = Offset(c.dx - dist / 2, c.dy - dist);

      Path path = Path()
        ..moveTo(a1.dx, a1.dy)
        ..lineTo(b1.dx, b1.dy)
        ..quadraticBezierTo(b.dx, b.dy, b2.dx, b2.dy)
        ..lineTo(c1.dx, c1.dy)
        ..quadraticBezierTo(c.dx, c.dy, c2.dx, c2.dy)
        ..lineTo(a2.dx, a2.dy)
        ..quadraticBezierTo(a.dx, a.dy, a1.dx, a1.dy);
      canvas.drawPath(path, paint);
      canvas.drawPoints(
        PointMode.points,
        [a1, b1, b2, c1, c2, a2],
        addDotPaint,
      );
    }

    // canvas.drawPath(path, paint);

    // canvas.drawPoints(PointMode.points, [a, b, c], paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

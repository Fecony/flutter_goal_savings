import 'package:flutter/material.dart';

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

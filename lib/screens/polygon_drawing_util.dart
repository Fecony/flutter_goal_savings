import 'package:flutter/material.dart';
import 'package:flutter_goal_savings/styleguide/colors.dart';

class PolygonDrawing extends StatefulWidget {
  @override
  _PolygonDrawingState createState() => _PolygonDrawingState();
}

class _PolygonDrawingState extends State<PolygonDrawing> {
  int _sides = 3;
  double _rotation = 0;
  double _radius = 0;
  double _scale = 100.0;
  static const int MIN_SIDES = 3;

  int get sidesCount => _sides;
  double get rotation => _rotation;
  double get radius => _radius;
  double get scale => _scale;

  void setSides(int amount) {
    final int nextValue = _sides + amount;
    if (nextValue >= MIN_SIDES) {
      setState(() => _sides = nextValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    double dWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text('Polygon Drawing util')),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: primaryBlueColor,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: SizedBox(
                  height: dWidth,
                  width: dWidth,
                  child: CustomPaint(
                    painter: PolygonDrawingUtil(
                      sides: sidesCount,
                      rotation: rotation,
                      scale: scale,
                      radius: radius,
                    ),
                  ),
                ),
              ),
              Table(
                columnWidths: {0: FractionColumnWidth(.3)},
                children: [
                  TableRow(
                    children: [
                      Row(
                        children: <Widget>[
                          Text('Side Count: '),
                          Text(
                            '$_sides',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TableCell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            RaisedButton(
                              onPressed: _sides == MIN_SIDES
                                  ? null
                                  : () {
                                      setSides(-1);
                                      print('Sides - : $_sides');
                                    },
                              child: Text('-'),
                            ),
                            RaisedButton(
                              onPressed: () {
                                setSides(1);
                                print('Sides + : $_sides');
                              },
                              child: Text('+'),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  TableRow(
                    children: [
                      Text('Corner Radius'),
                      Slider.adaptive(
                        value: _radius,
                        max: 360.0,
                        onChanged: (double value) {
                          setState(() {
                            _radius = value;
                          });
                          print('Radius: $value');
                        },
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text('Rotation'),
                      Slider.adaptive(
                        value: _rotation,
                        max: 360.0,
                        onChanged: (double value) {
                          setState(() {
                            _rotation = value;
                          });
                          print('Rotation: $value');
                        },
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text('Scale'),
                      Slider.adaptive(
                        value: _scale,
                        max: 100.0,
                        min: 0.0,
                        onChanged: (double value) {
                          setState(() {
                            _scale = value;
                          });
                          print('Scale: $value');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// double centerX = (width / 2).toFloat();
// double centerY = (height / 2).toFloat();
// double radius = _scale * (width / 2);

class PolygonDrawingUtil extends CustomPainter {
  final int sides;
  final double rotation;
  final double radius;
  final double scale;

  PolygonDrawingUtil({this.rotation, this.radius, this.scale, this.sides});

  @override
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

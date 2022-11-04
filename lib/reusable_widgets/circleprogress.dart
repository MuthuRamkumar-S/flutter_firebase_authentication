import 'dart:math';

import 'package:flutter/material.dart';

class Circleprogress extends CustomPainter{

  final strokeCircle = 7.0;
  double currentProgress;

  Circleprogress(this.currentProgress);
  @override
  void paint(Canvas canvas, Size size) {
    // TODO:   implement paint
    Paint circle = Paint()
      ..strokeWidth = strokeCircle
      ..color = Colors.black
      ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width/2, size.height/2);
    double radius = 50;
    canvas.drawCircle(center, radius, circle);

    Paint animationArc = Paint()
    ..strokeWidth = strokeCircle
    ..color = Colors.purpleAccent
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round;

    double angle = 2 * pi * (currentProgress/100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
        pi/2, angle, false, animationArc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class SubjectCurvePainter extends CustomPainter {
  SubjectCurvePainter(this.color);
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1
    Paint paintFill0 = Paint()
      ..color =   color
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5, size.height * -0.000000);
    path_0.cubicTo(size.width * 0.6231167, size.height * 0.3230667,
        size.width * 0.7012833, size.height * 0.5307333, size.width * 1.0010000,
        size.height * 0.53333);
    path_0.quadraticBezierTo(size.width * 1.0009583, size.height * 0.5205000,
        size.width, 0);
    path_0.quadraticBezierTo(size.width * 0.8803250, size.height * 0.0045833,
        size.width , size.height * -0.0007000);
    path_0.close();

    // ClipRRect to achieve top-right corner radius
    canvas.clipRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(0, 0, size.width, size.height),
        topRight: const Radius.circular(cardBorderRadius),
      ),
    );

    canvas.drawPath(path_0, paintFill0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }


}



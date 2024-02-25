import 'package:flutter/material.dart';

class SubjectLinePainter extends CustomPainter {
  final Color lineColor;

  SubjectLinePainter({super.repaint, required this.lineColor});
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color =lineColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.58, size.height * 0.0);
    path_0.quadraticBezierTo(size.width * 0.7, size.height * 0.568000,
        size.width, size.height * 0.6);

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
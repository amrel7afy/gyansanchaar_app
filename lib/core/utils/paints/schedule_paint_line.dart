import 'package:flutter/material.dart';

class ScheduleLinePainter extends CustomPainter {
  final Color lineColor;

  ScheduleLinePainter({super.repaint, required this.lineColor});
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintStroke0 = Paint()
      ..color =lineColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.008
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4, size.height * 0.0);
    path_0.quadraticBezierTo(size.width * 0.7, size.height * 0.7000,
        size.width, size.height * 0.7);

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

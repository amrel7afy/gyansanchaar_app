import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/core/utils/constants/methods.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';
import 'package:gyansanchaar_app/core/utils/paints/subject_custom_paint.dart';
import 'package:gyansanchaar_app/core/utils/paints/subject_paint_line.dart';
import 'package:gyansanchaar_app/core/utils/paints/schedule_paint_line.dart';
import 'package:gyansanchaar_app/core/utils/paints/schedule_painter.dart';

import '../../../../../core/utils/constants/my_colors.dart';

class SchedulePainter extends StatelessWidget {
  const SchedulePainter({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          size: Size(getWidth(context), getHeight(context)),
          painter: ScheduleCurvePainter(MyColors.kPrimaryColor),
        ),
        CustomPaint(
          size: Size(getWidth(context), getHeight(context)),
          painter: ScheduleLinePainter(lineColor: Colors.white),
        ),
      ],
    );
  }
}
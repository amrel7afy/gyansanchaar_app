import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/widgets/schedule_painter.dart';
import 'package:gyansanchaar_app/core/utils/constants/methods.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';
import 'package:gyansanchaar_app/core/utils/paints/subject_custom_paint.dart';
import 'package:gyansanchaar_app/core/utils/paints/subject_paint_line.dart';
import 'package:gyansanchaar_app/core/utils/paints/schedule_paint_line.dart';
import 'package:gyansanchaar_app/core/utils/paints/schedule_painter.dart';

import '../../../../../core/utils/constants/my_colors.dart';

class ScheduledSubjectTime extends StatelessWidget {
  const ScheduledSubjectTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 21,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: MyColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(8)),
      child: const Text('11:25-1:00 pm',
          style: MyTextStyles.semiBoldTextStyle10),
    );
  }
}


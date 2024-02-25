import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/widgets/schedule_painter.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

import '../../../../../core/utils/constants/my_colors.dart';
import 'scheduled_subject_time.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: const EdgeInsets.only(right: 34),
      decoration: BoxDecoration(
        color: MyColors.kCardColor,
        borderRadius: BorderRadius.circular(17.69),
      ),
      child: Stack(
        children: <Widget>[
          const SchedulePainter(),
          const Positioned(
            top: 27,
            left: 18,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Biology',
                  style: MyTextStyles.semiBoldTextStyle22,
                ),
                VerticalSpacer(2),
                Text(
                  'Chapter 3 : Animal Kingdom',
                  style: MyTextStyles.semiBoldTextStyle12,
                ),
                VerticalSpacer(20),
                ScheduledSubjectTime()
              ],
            ),
          ),
          Positioned(
            right: 18,
            top: 15,
            child: Image.asset(
              'assets/images/notespng.png',
              height: 90,
            ),
          ),
        ],
      ),
    );
  }
}

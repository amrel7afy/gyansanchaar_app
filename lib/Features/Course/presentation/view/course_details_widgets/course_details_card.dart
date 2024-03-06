import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/core/utils/constants/constants.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_assets.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

class CourseDetailsCard extends StatelessWidget {
  const CourseDetailsCard({
    super.key,
    required this.backGroundColor,
  });

  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    Color textColor =
        backGroundColor == MyColors.kPrimaryColor ? Colors.white : Colors.black;
    Color indicatorColor = backGroundColor == MyColors.kPrimaryColor
        ? Colors.white
        : MyColors.kPrimaryColor;
    Color indicatorBackGroundColor = backGroundColor == MyColors.kPrimaryColor
        ? Colors.white.withOpacity(0.3)
        : MyColors.kGreyColor.withOpacity(0.5);
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 200,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: backGroundColor, borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Physics 211',
                      style: MyTextStyles.boldTextStyle16
                          .copyWith(color: textColor, fontFamily: raleWay),
                    ),
                    const VerticalSpacer(.5),
                    Text(
                      'Prof.  Andrew Grey',
                      style: MyTextStyles.mediumTextStyle12
                          .copyWith(color: textColor, fontFamily: raleWay),
                    ),
                  ],
                ),
                const Spacer(),
                Image.asset(
                  MyAssets.atom,
                  height: 50,
                )
              ],
            ),
            const VerticalSpacer(1.3),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Assignments',
                      style: MyTextStyles.mediumTextStyle10
                          .copyWith(color: indicatorColor, fontFamily: raleWay),
                    ),
                    Text(
                      '2 / 5',
                      style: MyTextStyles.mediumTextStyle10
                          .copyWith(color: indicatorColor, fontFamily: raleWay),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Group work',
                      style: MyTextStyles.mediumTextStyle10
                          .copyWith(color: indicatorColor, fontFamily: raleWay),
                    ),
                    Text(
                      '2 / 2',
                      style: MyTextStyles.mediumTextStyle10
                          .copyWith(color: indicatorColor, fontFamily: raleWay),
                    ),
                  ],
                ),
                const Spacer()
              ],
            ),
            const VerticalSpacer(1),
            Text(
              'Submission-',
              style: MyTextStyles.extraBoldTextStyle12
                  .copyWith(color: indicatorColor, fontFamily: raleWay),
            ),
            Text(
              'Assignment due on the 21st of April at 11:59 pm',
              style: MyTextStyles.mediumTextStyle12
                  .copyWith(color: textColor, fontFamily: raleWay),
            ),
            const VerticalSpacer(1.6),
            LinearProgressIndicator(
              color: indicatorColor,
              backgroundColor: indicatorBackGroundColor,
              value: 0.68,
              borderRadius: BorderRadius.circular(10),
            ),
            const Expanded(child: VerticalSpacer(4)),
            Row(
              children: [
                Text(
                  'Course outline progress',
                  style: MyTextStyles.mediumTextStyle10
                      .copyWith(color: indicatorColor, fontFamily: raleWay),
                ),
                const Spacer(),
                Text(
                  '68%',
                  style: MyTextStyles.mediumTextStyle12
                      .copyWith(color: indicatorColor, fontFamily: raleWay),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

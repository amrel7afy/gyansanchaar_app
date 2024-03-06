import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/core/utils/AppRouter.dart';
import 'package:gyansanchaar_app/core/utils/constants/constants.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_assets.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

class CourseCard extends StatelessWidget {
  final Color backGroundColor;

  const CourseCard({
    super.key,
    required this.backGroundColor,
  });

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
      onTap: () => Navigator.pushNamed(context, AppRouter.courseDetailsView),
      child: Container(
        height: 115,
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
                    FittedBox(
                      child: Text(
                        'Physics 211',
                        style: MyTextStyles.boldTextStyle16
                            .copyWith(color: textColor, fontFamily: raleWay),
                      ),
                    ),
                    const VerticalSpacer(0.6),
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

class ScheduleViewAppBar extends StatelessWidget {
  const ScheduleViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          '26',
          style: MyTextStyles.semiBoldTextStyle44,
        ),
        const HorizontalSpacer(8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wed',
              style: MyTextStyles.mediumTextStyle14
                  .copyWith(color: MyColors.kGreyColor),
            ),
            Text(
              'Jan 2020',
              style: MyTextStyles.mediumTextStyle14
                  .copyWith(color: MyColors.kGreyColor),
            ),
          ],
        ),
        const Spacer(),
        Container(
          alignment: Alignment.center,
          height: 40,
          width: 83,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: MyColors.kPrimaryColor.withOpacity(0.15)),
          child: Text(
            'Today',
            style: MyTextStyles.boldTextStyle16
                .copyWith(color: MyColors.kPrimaryColor),
          ),
        )
      ],
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/widgets/schedule_card.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/widgets/see_more_text.dart';
import 'package:gyansanchaar_app/core/utils/AppRouter.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

import '../../../../../core/utils/constants/my_colors.dart';

class ScheduleSection extends StatelessWidget {
  const ScheduleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Your Schedule',
          style: MyTextStyles.boldTextStyle24,
        ),
        const VerticalSpacer(6),
        Padding(
          padding: const EdgeInsets.only(right: 42.5),
          child: Row(
            children: [
              Text(
                'Next lessons',
                style: MyTextStyles.boldTextStyle14
                    .copyWith(color: MyColors.kGreyColor),
              ),
              const Spacer(),
              SeeMoreButton(onTap: (){
                Navigator.pushNamed(context, AppRouter.scheduleView);
              },),
            ],
          ),
        ),
        const VerticalSpacer(16),
        const ScheduleCard()
      ],
    );
  }
}

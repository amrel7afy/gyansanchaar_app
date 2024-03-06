import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gyansanchaar_app/Features/Course/presentation/view/course_widgets/remaining_lectures_card.dart';
import 'package:gyansanchaar_app/Features/Home/presentation/view/home_view_widgets/see_more_text.dart';
import 'package:gyansanchaar_app/core/utils/AppRouter.dart';
import 'package:gyansanchaar_app/core/utils/constants/methods.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

import '../../../../../core/utils/constants/constants.dart';
import '../../../../../core/utils/constants/my_text_styles.dart';

class RemainingLecturesSection extends StatelessWidget {
  const RemainingLecturesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
             Text(
              'Remaining Lectures ',
              style: MyTextStyles.semiBoldTextStyle20.copyWith(
                fontFamily:raleWay
              ),
            ),
            const Spacer(),
            SeeMoreButton(onTap: (){

            },),
          ],
        ),
        const VerticalSpacer(2.4),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            children: [
              RemainingLecturesCard(
                backGroundColor: MyColors.kPrimaryColor,
                course: 'Physics 211',
                instructorName: 'Courtney Henry',
                textColor: Colors.white,
                onTap: () {
                  navigateTo(context, AppRouter.syllabusView);
                },
              ),
              const HorizontalSpacer(1),
              RemainingLecturesCard(
                backGroundColor: MyColors.kCardColor,
                course: 'Physics 211',
                instructorName: 'Courtney Henry',
                textColor: Colors.black,
                onTap: () {
                  navigateTo(context, AppRouter.scheduleView);
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            children: [
              RemainingLecturesCard(
                backGroundColor: MyColors.kCardColor,
                course: 'Physics 211',
                instructorName: 'Courtney Henry',
                textColor: Colors.black,
                onTap: () {
                  navigateTo(context, AppRouter.assignmentsView);
                },
              ),
              const HorizontalSpacer(1),
              RemainingLecturesCard(
                backGroundColor: MyColors.kPrimaryColor,
                course: 'Physics 211',
                instructorName: 'Courtney Henry',
                textColor: Colors.white,
                onTap: () {
                  navigateTo(context, AppRouter.testsView);
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            children: [
              RemainingLecturesCard(
                backGroundColor: MyColors.kPrimaryColor,
                course: 'Physics 211',
                instructorName: 'Courtney Henry',
                textColor: Colors.white,
                onTap: () {
                  navigateTo(context, AppRouter.attendanceView);
                },
              ),
              const HorizontalSpacer(1),
              RemainingLecturesCard(
                backGroundColor: MyColors.kCardColor,
                course: 'Physics 211',
                instructorName: 'Courtney Henry',
                textColor: Colors.black,
                onTap: () {
                  navigateTo(context, AppRouter.extraView);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
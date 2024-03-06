
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:gyansanchaar_app/Features/Course/presentation/view/course_widgets/course_card.dart';
import 'package:gyansanchaar_app/Features/Course/presentation/view/course_widgets/remaining_lectures_section.dart';
import 'package:gyansanchaar_app/Features/Home/presentation/view/home_view_widgets/quick_links_section.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

import '../../../../../core/utils/constants/constants.dart';

class CourseViewBody extends StatelessWidget {
  const CourseViewBody({super.key});

  getBackGroundColor(index) {
    if (index == 0 || index % 2 == 0) {
      return MyColors.kPrimaryColor;
    } else {
      return MyColors.kCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverPadding(
          padding:  const EdgeInsets.symmetric(horizontal: kLeftCourseViewPadding),
          sliver: SliverList(
            delegate:
            SliverChildBuilderDelegate((context, index) =>
                CourseCard(
                  backGroundColor: getBackGroundColor(index),
                ),childCount: 10),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kLeftCourseViewPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VerticalSpacer(5.4),
                RemainingLecturesSection(),
                VerticalSpacer(4.8),
                QuickLinksSection(),
                VerticalSpacer(3.0),
              ],
            ),
          ),
        )
      ],
    );
  }
}

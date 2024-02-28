import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/Course/presentation/view/course_widgets/course_card.dart';

import '../../../../../core/utils/constants/constants.dart';

class CourseViewBody extends StatelessWidget {
  const CourseViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kLeftCourseViewPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CourseCard()
              ],
            ),
          ),
        ),
      ],
    );
  }
}



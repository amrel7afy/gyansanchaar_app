import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/Course/presentation/view/course_widgets/course_view_body.dart';
import 'package:gyansanchaar_app/core/utils/constants/constants.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';

class CourseView extends StatelessWidget {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: kLeftCourseViewPadding,
        leadingWidth: 80,
        title: Text(
          'Courses',
          style: MyTextStyles.boldTextStyle20
              .copyWith(color: MyColors.kPrimaryColor),
        ),
      ),
      body: const SafeArea(child: CourseViewBody()),
    );
  }

}



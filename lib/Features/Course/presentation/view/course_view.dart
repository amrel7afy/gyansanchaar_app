import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/Course/presentation/view/course_widgets/course_view_body.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';

class CourseView extends StatelessWidget {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 00.0,
        leadingWidth: 80,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () => Navigator.pop(context),
        ),
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



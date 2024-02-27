import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/Syllabus/presentation/view/syllabus_view_widgets/syllabus_view_body.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';

class SyllabusView extends StatelessWidget {
  const SyllabusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 00.0,
        leadingWidth: 80,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: MyColors.kPrimaryColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Syllabus',
          style: MyTextStyles.boldTextStyle18,
        ),
        centerTitle: true,
      ),
      body: const SafeArea(child: SyllabusViewBody()),
    );
  }
}


import 'package:flutter/material.dart';

import 'package:gyansanchaar_app/Features/Syllabus/presentation/view/syllabus_view_widgets/syllabus_card.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/custom_button.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/show_dialog_method.dart';

import '../../../../../core/utils/constants/constants.dart';
import '../../../../../core/utils/constants/methods.dart';
import '../../../../../core/utils/constants/widgets/vertical_and_horizontal_space.dart';

class SyllabusViewBody extends StatelessWidget {
  const SyllabusViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kLeftSyllabusViewPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const SyllabusCard();
              },
            ),
          ),
          const VerticalSpacer(10),
          buildButton(context),
          const VerticalSpacer(20)
        ],
      ),
    );
  }

  SizedBox buildButton(BuildContext context) {
    return SizedBox(
      height: 55,
      width: getWidth(context),
      child: CustomButton(
        borderRadius: BorderRadius.circular(10),
        textStyle: MyTextStyles.boldTextStyle18.copyWith(color: Colors.white),
        text: 'Add to Syllabus',
        backGroundColor: MyColors.kPrimaryColor,
        onPressed: () {
          buildShowDialog(context,
              title: 'Added Successfully',
              subTitle: 'Your Syllabus has been Created successfully');
        },
      ),
    );
  }
}

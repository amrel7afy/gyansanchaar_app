
import 'package:flutter/material.dart';


import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:gyansanchaar_app/core/utils/constants/constants.dart';
import 'package:gyansanchaar_app/core/utils/constants/methods.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/custom_button.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/search_field.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/show_dialog_method.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

class AssignmentsViewBody extends StatelessWidget {
  const AssignmentsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
                left: kLeftAssignmentsViewPadding,
                right: kRightAssignmentsViewPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close)),
                const VerticalSpacer(24),
                Text(
                  'Assignments',
                  style: MyTextStyles.boldTextStyle20
                      .copyWith(color: MyColors.kPrimaryColor),
                ),
                const VerticalSpacer(35),
                const DefaultFormField(
                  prefixTitle: 'Title',
                ),
                const DefaultFormField(
                  prefixTitle: 'Place',
                ),
                const VerticalSpacer(40),
                const DefaultFormField(
                  prefixTitle: 'Date',
                  suffixWidget: Icon(
                    FontAwesomeIcons.solidCalendar,
                    color: MyColors.kPrimaryColor,
                  ),
                ),
                const DefaultFormField(
                  prefixTitle: 'Time',
                ),
                const DefaultFormField(
                  prefixTitle: 'Repeat',
                ),
                const VerticalSpacer(28),
                const DefaultFormField(
                  prefixTitle: 'URL',
                ),
                const DefaultFormField(
                  prefixTitle: 'Notes',
                  maxLines: 3,
                ),
                SizedBox(
                  height: 55,
                  width: getWidth(context),
                  child: CustomButton(
                    borderRadius: BorderRadius.circular(10),
                    textStyle: MyTextStyles.boldTextStyle20
                        .copyWith(color: Colors.white),
                    text: 'Create',
                    backGroundColor: MyColors.kPrimaryColor,
                    onPressed: () {

                      buildShowDialog(context, title: 'Created Successfully', subTitle: 'Your Assignment has been Created successfully ');
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }


}

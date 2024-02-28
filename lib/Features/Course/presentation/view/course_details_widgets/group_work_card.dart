import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/core/utils/constants/constants.dart';
import 'package:gyansanchaar_app/core/utils/constants/methods.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';


class GroupWorkCard extends StatelessWidget {
  const GroupWorkCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 130,
      color: const Color(0xffcfd1d8),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Details',
            style: MyTextStyles.mediumTextStyle12
                .copyWith( fontFamily: raleWay),
          ),
          const VerticalSpacer(2),
          SizedBox(
            width: getWidth(context) * 0.9,
            child: Text(
              '-',
              maxLines: 3,
              style: MyTextStyles.mediumTextStyle12.copyWith(
                fontFamily: raleWay,
              ),
            ),
          ),
          const VerticalSpacer(8),
          Text(
            'Submission-',
            style: MyTextStyles.mediumTextStyle12
                .copyWith( fontFamily: raleWay),
          ),
          const VerticalSpacer(2),
          SizedBox(
            width: getWidth(context) * 0.8,
            child: Text(
              '-',
              maxLines: 1,
              style: MyTextStyles.mediumTextStyle12.copyWith(
                fontFamily: raleWay,
              ),
            ),
          ),
          const VerticalSpacer(8),
          Row(
            children: [
              Text(
                'Add Group Work',
                style: MyTextStyles.extraBoldTextStyle14.copyWith(
                    color: Colors.white,
                    fontFamily: raleWay,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';

import '../../../../../core/utils/constants/constants.dart';

class RemainingLecturesCard extends StatelessWidget {
  final Color backGroundColor;
  final Color textColor;
  final String instructorName;
  final String course;
  final VoidCallback onTap;

  const RemainingLecturesCard({
    super.key, required this.backGroundColor, required this.instructorName, required this.course, required this.textColor, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 64,
          padding: const EdgeInsets.all(12),

          color: backGroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                course,
                style: MyTextStyles.boldTextStyle16.copyWith(
                  color: textColor,
                  fontFamily: raleWay
                ),
              ) ,
              Text(
                instructorName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: MyTextStyles.mediumTextStyle12.copyWith(
                  color: textColor,
                    fontFamily: raleWay
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
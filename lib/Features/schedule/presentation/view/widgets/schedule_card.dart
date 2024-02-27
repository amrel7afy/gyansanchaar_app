
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_assets.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

class CourseTimeLineCard extends StatelessWidget {
  final Color backGroundColor;
  const CourseTimeLineCard({super.key, required this.backGroundColor});
  final String img =
      'https://th.bing.com/th/id/OIP.HkIbhO8npHy_0T2VN9fTewHaMg?w=192&h=324&c=7&r=0&o=5&dpr=1.3&pid=1.7';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 143,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '13:05',
                style: MyTextStyles.semiBoldTextStyle16
                    .copyWith(color: Colors.black),
              ),
              Text(
                '13:05',
                style: MyTextStyles.mediumTextStyle14
                    .copyWith(color: MyColors.kExtraGreyColor),
              ),
            ],
          ),
          const SizedBox(
              height: 143,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: VerticalDivider(
                  width: 0.5,
                  thickness: 1,
                  color: MyColors.kExtraGreyColor,
                ),
              )),
          buildCourse(backGroundColor),
        ],
      ),
    );
  }






  Expanded buildCourse(Color backGroundColor) {
    Color textColor=backGroundColor == MyColors.kPrimaryColor?Colors.white:Colors.black;
    Color iconColor=backGroundColor == MyColors.kPrimaryColor?Colors.white:Colors.black;
    return Expanded(
          child: Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            height: 200,
            decoration: BoxDecoration(
                color: backGroundColor,
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Mathematics',
                      style: MyTextStyles.semiBoldTextStyle16
                          .copyWith(color: textColor),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      MyAssets.twoVerticalDots,
                      width: 24,
                      height: 24,
                      color: iconColor,
                    )
                  ],
                ),
                Text(
                  'Chapter 1: Introduction',
                  style: MyTextStyles.mediumTextStyle12
                      .copyWith(color: textColor),
                ),
                const VerticalSpacer(13),
                Row(
                  children: [
                    SvgPicture.asset(MyAssets.location,color: iconColor,),
                    HorizontalSpacer(12),
                    Text(
                      'Online Mode',
                      style: MyTextStyles.mediumTextStyle12.copyWith(
                          color: textColor, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const VerticalSpacer(7),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 8,
                      backgroundImage: NetworkImage(img),
                    ),
                    HorizontalSpacer(10),
                    Text(
                      'Brooklyn Williamson',
                      style: MyTextStyles.mediumTextStyle12.copyWith(
                          color: textColor, fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
          ),
        );
  }
}

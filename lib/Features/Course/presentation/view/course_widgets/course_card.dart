import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_assets.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';


class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: MyColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Physics 211',
                    style: MyTextStyles.boldTextStyle16.copyWith(
                        color: Colors.white,
                        fontFamily:
                        GoogleFonts.raleway().fontFamily),
                  ),
                  VerticalSpacer(5),
                  Text(
                    'Prof.  Andrew Grey',
                    style: MyTextStyles.mediumTextStyle12.copyWith(
                        color: Colors.white,
                        fontFamily:
                        GoogleFonts.raleway().fontFamily),
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(
                MyAssets.atom,
                height: 50,
              )
            ],
          ),
          const VerticalSpacer(16),
          LinearProgressIndicator(
            color: Colors.white,
            backgroundColor: Colors.white.withOpacity(0.3),
            value: 0.68,
            borderRadius: BorderRadius.circular(10),
          ),
          const Expanded(child: VerticalSpacer(4)),
          Row(
            children: [
              Text(
                'Course outline progress',
                style: MyTextStyles.mediumTextStyle10.copyWith(
                    color: Colors.white,
                    fontFamily: GoogleFonts.raleway().fontFamily),
              ),
              const Spacer(),
              Text(
                '68%',
                style: MyTextStyles.mediumTextStyle12.copyWith(
                    color: Colors.white,
                    fontFamily:
                    GoogleFonts.raleway().fontFamily),
              )
            ],
          ),
        ],
      ),
    );
  }
}
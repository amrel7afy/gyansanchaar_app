import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gyansanchaar_app/core/utils/constants/methods.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_assets.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

class MyDialog extends StatelessWidget {
  final String title,subTitle;
  const MyDialog({
    super.key, required this.title, required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: getHeight(context) * 0.4,
        width: getWidth(context) * 0.8,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24)),
        child: Column(children: [
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.close,
                  color: MyColors.kPrimaryColor,
                )),
          ),
          SvgPicture.asset(
            MyAssets.created,
            width: 160,
            height: 160,
          ),
          const VerticalSpacer(38),
           Text(
            title,
            style: MyTextStyles.extraBoldTextStyle24,
          ),
          SizedBox(
            width: getWidth(context) * 0.6,
            child:  Text(
              subTitle,
              maxLines: 2,
              style: MyTextStyles.mediumTextStyle12.copyWith(color: MyColors.kExtraGreyColor),
              textAlign: TextAlign.center,
            ),
          ),
        ]),
      ),
    );
  }
}
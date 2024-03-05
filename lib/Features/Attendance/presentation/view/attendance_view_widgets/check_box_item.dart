import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/my_colors.dart';
import '../../../../../core/utils/constants/my_text_styles.dart';

Widget buildCheckBoxItem({
  required String letter,
  required Color activeColor,
  required bool status,
  required void Function(bool?)?onChanged
}) {
  return Row(
    children: [
      Text(
        letter,
        style: MyTextStyles.mediumTextStyle20
            .copyWith(color: status ? activeColor : MyColors.kGreyColor),
      ),
      const SizedBox(width: 4),
      SizedBox(
        width: 25,
        height: 39,
        child: Checkbox(
          value: status,
          hoverColor: MyColors.kGreyColor,
          checkColor: Colors.white,
          side: const BorderSide(color: MyColors.kGreyColor, width: 2.0),
          activeColor: activeColor,
          onChanged: onChanged,
        ),
      ),
    ],
  );
}

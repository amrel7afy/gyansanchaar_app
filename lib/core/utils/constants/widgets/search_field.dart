import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';

import '../constants.dart';

class DefaultFormField extends StatelessWidget {
  final TextEditingController controller;
  final int ? maxLines;
  final String? hint;
  final String? prefixTitle;
  final TextInputType? textInputType;
  final String? Function(String?)? validate;
  final bool? obscureText;
  final Widget? suffixWidget;
  final VoidCallback? suffixPressed;
  final Function(String?)? onSubmitted;
  final Widget? label;

  const DefaultFormField({
    super.key,
    this.hint,
    this.label,
    this.suffixPressed,
    this.prefixTitle,
    this.onSubmitted,
    this.textInputType,
    this.validate,
    this.suffixWidget,
    this.obscureText, this.maxLines, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines??1,
        onFieldSubmitted: onSubmitted,
        keyboardType: textInputType,
        validator: validate,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 19,horizontal: 12),
            fillColor: MyColors.kCardColor,

            filled: true,
            label: label,
            hintText: hint,
            hintStyle: MyTextStyles.semiBoldTextStyle14
                .copyWith(fontFamily: raleWay),
            suffixIcon: IconButton(onPressed:suffixPressed,icon: suffixWidget??Container(width: 1,),),

            prefixIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    prefixTitle ?? '',
                    style: MyTextStyles.mediumTextStyle14
                        .copyWith(fontFamily: raleWay),
                  ),
                ),
              ],
            ),
            border: InputBorder.none),
      ),
    );
  }
}

class NotesFormField extends StatelessWidget {
  final TextEditingController controller;
  final int? maxLines;
  final String? hint;
  final String? prefixTitle;
  final TextInputType? textInputType;
  final String? Function(String?)? validate;
  final bool? obscureText;
  final Widget? suffixWidget;
  final VoidCallback? suffixPressed;
  final Function(String?)? onSubmitted;
  final Widget? label;

  const NotesFormField({
    super.key,
    this.hint,
    this.label,
    this.suffixPressed,
    this.prefixTitle,
    this.onSubmitted,
    this.textInputType,
    this.validate,
    this.suffixWidget,
    this.obscureText,
    this.maxLines,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines ?? 1,
        onFieldSubmitted: onSubmitted,
        keyboardType: textInputType,
        validator: validate,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(

          fillColor: MyColors.kCardColor,
          filled: true,
          label: label,
          hintText: hint,
          hintStyle: MyTextStyles.semiBoldTextStyle14.copyWith(fontFamily: raleWay,color: MyColors.kExtraGreyColor),
          // Remove the default prefixIcon
          // Set prefixIcon as a column with a Text widget for the prefixTitle
          prefixIcon: Padding(
            padding: const EdgeInsets.only(bottom: 58,left: 10,right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  prefixTitle ?? '',
                  style: MyTextStyles.mediumTextStyle14.copyWith(fontFamily: raleWay),
                ),

              ],
            ),
          ),
          // Adjust the position of the text field content
          contentPadding: const EdgeInsets.fromLTRB(12, 24, 12, 12),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
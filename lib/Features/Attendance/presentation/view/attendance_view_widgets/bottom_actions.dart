import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gyansanchaar_app/core/utils/constants/methods.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/custom_button.dart';

import '../../../../../core/utils/constants/constants.dart';

class BottomActions extends StatefulWidget {
  const BottomActions({
    super.key,
  });

  @override
  State<BottomActions> createState() => _BottomActionsState();
}

DateTime dateTime=DateTime.now();
String date= "${dateTime.day.toString()}/${dateTime.month.toString()}/${dateTime.year.toString().substring(2)}";
class _BottomActionsState extends State<BottomActions> {

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              primary:MyColors.kPrimaryColor,
             
            ),
          ), child: child!,
          
        );
      },
    );

    if (picked != null && picked != DateTime.now()) {
      setState(() {
        // Format the date as 'yyyy-MM-dd'
        String formattedDate =
            "${picked.day.toString()}/${picked.month.toString()}/${picked.year.toString().substring(2)}";
        date = formattedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kLeftHomeViewPadding),
      child: Row(
        children: [
          Row(
            children: [
              InkWell(
                onTap: ()async{
                  _selectDate(context);
                },
                borderRadius: BorderRadius.circular(10),
                // Adjust the border radius as needed
                child: Container(
                  padding: const EdgeInsets.all(10),
                  // Adjust the padding as needed
                  decoration: BoxDecoration(
                    border: Border.all(color: MyColors.kGreyColor),
                    // Adjust the border color as needed
                    borderRadius: BorderRadius.circular(
                        10), // Match the border radius above
                  ),
                  child: Text(date,
                      style: MyTextStyles.boldTextStyle24
                          .copyWith(color: MyColors.kPrimaryColor)),
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              InkWell(
                onTap: ()async{
                  _selectDate(context);
                },
                borderRadius: BorderRadius.circular(10),
                // Adjust the border radius as needed
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 3),
                  // Adjust the padding as needed
                  decoration: BoxDecoration(
                    color: MyColors.kMapPrimaryColor[50],
                    border: Border.all(color: MyColors.kGreyColor),
                    // Adjust the border color as needed
                    borderRadius: BorderRadius.circular(
                        10), // Match the border radius above
                  ),
                  child: const Icon(
                    FontAwesomeIcons.caretDown,
                    color: MyColors.kPrimaryColor,
                    size: 28,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          SizedBox(
            width: getWidth(context) * 0.34,
            height: 49,
            child: CustomButton(
              textStyle:
                  MyTextStyles.boldTextStyle18.copyWith(color: Colors.white),
              text: 'Submit',
              backGroundColor: MyColors.kPrimaryColor,
              onPressed: () {},
              borderRadius: BorderRadius.circular(12),
            ),
          )
        ],
      ),
    );
  }
}

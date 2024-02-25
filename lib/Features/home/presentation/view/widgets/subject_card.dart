import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view_model/subject_card_model.dart';
import 'package:gyansanchaar_app/core/utils/constants/constants.dart';
import 'package:gyansanchaar_app/core/utils/constants/methods.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';
import 'package:gyansanchaar_app/core/utils/paints/subject_custom_paint.dart';
import 'package:gyansanchaar_app/core/utils/paints/subject_paint_line.dart';

class SubjectCard extends StatelessWidget {
  final SubjectCardModel subjectCardModel;
  const SubjectCard({
    super.key, required this.subjectCardModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 149,
        decoration: BoxDecoration(
          color: subjectCardModel.backGroundColor,
          borderRadius: BorderRadius.circular(cardBorderRadius),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: 17.5,
              left: 10,
              child: Image.asset(
                subjectCardModel.img,
                width: 60,
                height: 50,
              ),
            ),
            Positioned(
              bottom: 16,
              child: Text(subjectCardModel.title,style: MyTextStyles.semiBoldTextStyle16,),
            ),
            CustomPaint(
              size: Size(getWidth(context), getHeight(context)),
              painter: SubjectCurvePainter(subjectCardModel.curveColor ),
            ),
            CustomPaint(
              size: Size(getWidth(context), getHeight(context)),
              painter: SubjectLinePainter(lineColor:subjectCardModel.curvedLineColor ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';

class SubjectCardModel {
  final String img;
  final String title;
  final Color backGroundColor;
  final Color curveColor;
  final Color curvedLineColor;

  SubjectCardModel(
      {required this.img,
      required this.title,
      required this.backGroundColor,
      required this.curveColor,
      required this.curvedLineColor});

  static final List<SubjectCardModel> cardsModels = [
    SubjectCardModel(
      img: 'assets/images/mathpng.png',
      title: 'Mathematics',
      backGroundColor: MyColors.kCardColor,
      curveColor: const Color(0xffFFC278),
      curvedLineColor: const Color(0xffEBB12B),
    ),
    SubjectCardModel(
      img: 'assets/images/geographypng.png',
      title: 'Geography',
      backGroundColor: MyColors.kPrimaryColor,
      curveColor: const Color(0xffFFF7E3),
      curvedLineColor: const Color(0xffFFF7E3),
    ),
    SubjectCardModel(
      img: 'assets/images/mathpng.png',
      title: 'Mathematics',
      backGroundColor: MyColors.kCardColor,
      curveColor: const Color(0xffFFC278),
      curvedLineColor: const Color(0xffEBB12B),
    ),
  ];
}

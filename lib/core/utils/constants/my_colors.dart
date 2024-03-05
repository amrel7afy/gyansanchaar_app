import 'package:flutter/material.dart';

abstract class MyColors{
  static const  kPrimaryColor=Color(0xffEBB12B);
  static const  kRedColor=Color(0xffFF7648);
  static const  kExtraRedColor=Color(0xffE30016);
  static const  kGreyColor=Color(0xffBCC1CD);
  static const  kExtraGreyColor=Color(0xff8A8A8A);
  static const  kGreenColor=Color(0xff29CC7A);

  static const  kAlertButtonColor=Color(0xffEBEEFF);
  static const  kCardColor=Color(0xfffcf1d6);
  static const  kSeeMoreTextColor=Color(0xff0D173B);




  static const int primaryValue = 0xffEBB12B;
  static const MaterialColor kMapPrimaryColor = MaterialColor(
    primaryValue,
    <int, Color>{
      50: Color(0xfffff7e3),
      100: Color(0xffffc23f),
      200: Color(0xffffbf35),
      300: Color(0xfff7b322),
      400: Color(0xffe2a00f),
      500: Color(primaryValue),
      600: Color(0xffe2a00f),
      700: Color(0xffc48b11),
      800: Color(0xffba8514),
      900: Color(0xffaf7d0f),
    },
  );
}
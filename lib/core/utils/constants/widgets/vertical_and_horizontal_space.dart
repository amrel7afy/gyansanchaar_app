import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/core/utils/constants/methods.dart';

class VerticalSpacer extends StatelessWidget {
  const VerticalSpacer(this.verticalSpace, {super.key});

  final double verticalSpace;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: getHeight(context)*verticalSpace/100);
  }
}

class HorizontalSpacer extends StatelessWidget {
  const HorizontalSpacer(this.horizontalSpace, {super.key});

  final double horizontalSpace;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: getWidth(context)*horizontalSpace/100);
  }
}

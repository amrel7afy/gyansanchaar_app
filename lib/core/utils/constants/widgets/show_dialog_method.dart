import 'package:flutter/material.dart';

import 'my_dialog.dart';

Future<dynamic> buildShowDialog(BuildContext context,{required String title,required String subTitle}) {
  return showDialog(
    context: context,
    builder: (BuildContext cxt) {
      return  MyDialog(title: title, subTitle: subTitle,);
    },
  );
}


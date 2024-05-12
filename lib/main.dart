import 'package:device_preview/device_preview.dart';
import 'package:gyansanchaar_app/core/utils/AppRouter.dart';

import 'package:flutter/material.dart';




import 'core/utils/constants/theme.dart';
//dart fix --apply --code=unused_import
void main(){
  //runApp(DevicePreview(builder: (context) => const GyansanchaarApp(),));
 runApp(const GyansanchaarApp());
}

class GyansanchaarApp extends StatelessWidget{
  const GyansanchaarApp({super.key});

  @override
  Widget build(BuildContext context) {
  return  MaterialApp(
   // builder: DevicePreview.appBuilder,
    debugShowCheckedModeBanner: false,
    theme: themeData,
    onGenerateRoute: AppRouter().generateRoute,
  );
  }
}


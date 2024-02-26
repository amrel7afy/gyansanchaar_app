

import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/home_view.dart';
import 'package:gyansanchaar_app/Features/schedule/presentation/view/schedule_view.dart';



class AppRouter {
  static const String homeView = '/';
  static const String bookDetailsView = '/bookDetailsView';
  static const String scheduleView = '/scheduleView';

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case homeView:
        return MaterialPageRoute(
            builder: (context) =>  const HomeView());
      case scheduleView:
        return MaterialPageRoute(
            builder: (context) =>  const ScheduleView());
    }
    return null;
  }
}



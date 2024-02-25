

import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/home_view.dart';



class AppRouter {

  static const String homeView = '/';
  static const String bookDetailsView = '/bookDetailsView';
  static const String searchView = '/searchView';

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case homeView:
        return MaterialPageRoute(
            builder: (context) =>  const HomeView());
    }
    return null;
  }
}

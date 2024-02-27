import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/Attendance/presentation/view/attendance_view.dart';
import 'package:gyansanchaar_app/Features/Extra/presentation/view/extra_view.dart';
import 'package:gyansanchaar_app/Features/Syllabus/presentation/view/syllabus_view.dart';
import 'package:gyansanchaar_app/Features/Tests/presentation/view/tests_view.dart';
import 'package:gyansanchaar_app/Features/assignments/presentation/view/assignments_view.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/home_view.dart';
import 'package:gyansanchaar_app/Features/schedule/presentation/view/schedule_view.dart';

class AppRouter {
  static const String homeView = '/';
  static const String bookDetailsView = '/bookDetailsView';
  static const String scheduleView = '/scheduleView';
  static const String assignmentsView = '/assignmentsView';
  static const String attendanceView = '/attendanceView';
  static const String extraView = '/extraView';
  static const String syllabusView = '/syllabusView';
  static const String testsView = '/testsView';

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeView:
        return MaterialPageRoute(builder: (context) => const HomeView());
      case scheduleView:
        return MaterialPageRoute(builder: (context) => const ScheduleView());
      case assignmentsView:
        return MaterialPageRoute(builder: (context) => const AssignmentsView());
      case attendanceView:
        return MaterialPageRoute(builder: (context) => const AttendanceView());
      case extraView:
        return MaterialPageRoute(builder: (context) => const ExtraView());
      case syllabusView:
        return MaterialPageRoute(builder: (context) => const SyllabusView());
      case testsView:
        return MaterialPageRoute(builder: (context) => const TestsView());
    }
    return null;
  }
}

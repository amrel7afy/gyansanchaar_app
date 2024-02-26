import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/schedule/presentation/view/widgets/schedule_view_body.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ScheduleViewBody()),
    );
  }
}

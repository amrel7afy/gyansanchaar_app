import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/Syllabus/presentation/view/syllabus_view_widgets/syllabus_view_body.dart';

class SyllabusView extends StatelessWidget {
  const SyllabusView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SyllabusViewBody()),
    );
  }
}

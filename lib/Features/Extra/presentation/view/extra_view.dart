import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/Extra/presentation/view/extra_view_widgets/extra_view_body.dart';

class ExtraView extends StatelessWidget {
  const ExtraView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ExtraViewBody()),
    );
  }
}

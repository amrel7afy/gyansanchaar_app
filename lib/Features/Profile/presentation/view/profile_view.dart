import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/Profile/presentation/view/profile_view_widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ProfileViewBody()),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/authentication_state.dart';
import '../view-models/user_view_model.dart';
import 'widgets/profile_loaded.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final _authVM = Get.find<UserViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Page')),
      body: Obx(() {
        final state = _authVM.auth.value;
        if (state is Authenticated) return ProfileLoaded(user: state.user);
        return const Center(child: CircularProgressIndicator());
      }),
    );
  }
}

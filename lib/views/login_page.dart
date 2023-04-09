import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/authentication_state.dart';
import '../services/rest_client_services.dart';
import '../services/route_services.gr.dart';
import '../view-models/user_view_model.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final userVm = Get.put(UserViewModel(RestClientServices(Dio())));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page'), centerTitle: true),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            child: TextButton(
              onPressed: () async {
                final userState = userVm.auth.value;
                if (userState is UnAuthenticated) {
                  userVm.getUser(UserData.loginWithUser());
                }
                if (context.mounted) context.router.push(ProfileRoute());
              },
              child: const Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}

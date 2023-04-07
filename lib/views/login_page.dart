import 'package:auto_route/auto_route.dart';
import 'package:coding_assessment/services/route_services.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/login.png'),
          TextButton(
            onPressed: () {
              context.router.push(const ProfileRoute());
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}

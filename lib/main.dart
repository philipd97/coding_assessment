import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'services/route_services.dart';
import 'services/route_services.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _routes = RouteServices();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: 'Coding Assessment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.blue, width: 1),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ),
      routerDelegate: _routes.delegate(
        initialRoutes: [const LoginRoute()],
      ),
      routeInformationProvider: _routes.routeInfoProvider(),
      routeInformationParser: _routes.defaultRouteParser(),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:coding_assessment/services/route_services.gr.dart';

@AutoRouterConfig()
class RouteServices extends $RouteServices {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: ProfileRoute.page),
  ];
}

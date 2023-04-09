import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:coding_assessment/models/user_model.dart';

part 'rest_client_services.g.dart';

@RestApi(baseUrl: 'https://dummyjson.com/')
abstract class RestClientServices {
  factory RestClientServices(Dio dio) = _RestClientServices;

  @POST('/auth/login')
  Future<User> getUser(@Body() UserData userData);
}

class UserData {
  final String username;
  final String password;

  UserData({
    required this.username,
    required this.password,
  });

  UserData.loginWithUser()
      : username = 'atuny0',
        password = '9uQFF1Lh';

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }
}

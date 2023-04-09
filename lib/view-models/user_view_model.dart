import 'package:coding_assessment/models/authentication_state.dart';
import 'package:coding_assessment/services/rest_client_services.dart';
import 'package:get/get.dart';

class UserViewModel extends GetxController {
  final RestClientServices client;

  UserViewModel(this.client);

  final auth = const AuthenticationState().obs;

  Future<void> getUser(UserData userData) async {
    try {
      if (auth.value is Authenticated) return;
      auth.value = const Authenticating();
      final user = await client.getUser(userData);
      auth.value = Authenticated(user: user);
    } catch (e) {
      print('error: $e');
    }
  }

  @override
  void onInit() {
    auth.value = const UnAuthenticated();
    super.onInit();
  }
}

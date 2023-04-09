import 'package:coding_assessment/models/user_model.dart';

class AuthenticationState {
  const AuthenticationState();
}

class UnAuthenticated extends AuthenticationState {
  const UnAuthenticated();
}

class Authenticating extends AuthenticationState {
  const Authenticating();
}

class Authenticated extends AuthenticationState {
  final User user;

  Authenticated({required this.user});

  @override
  String toString() => 'Authenticated(user: $user)';
}

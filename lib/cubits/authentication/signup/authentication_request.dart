import 'package:meta/meta.dart';

class AuthenticationRequest {
  final String email;
  final String password;

  const AuthenticationRequest({
    required this.email,
    required this.password,
  });
}

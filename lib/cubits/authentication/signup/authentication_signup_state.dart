abstract class AuthenticationSignupState {
  const AuthenticationSignupState();
}

class AuthenticationSignupInitial extends AuthenticationSignupState {
  const AuthenticationSignupInitial();
}

class AuthenticationSignupLoading extends AuthenticationSignupState {
  const AuthenticationSignupLoading();
}

class AuthenticationSignupSuccess extends AuthenticationSignupState {
  const AuthenticationSignupSuccess();
}

class AuthenticationSignupError extends AuthenticationSignupState {
  final String errorMessage;

  const AuthenticationSignupError(this.errorMessage);
}

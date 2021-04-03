abstract class SignUpEvent {}

class SignUpNameChanged extends SignUpEvent {
  final String name;

  SignUpNameChanged(this.name);
}

class SignUpPhoneNumberChanged extends SignUpEvent {
  final String phoneNumber;

  SignUpPhoneNumberChanged(this.phoneNumber);
}

class SignUpPasswordChanged extends SignUpEvent {
  final String password;

  SignUpPasswordChanged(this.password);
}

class SignUpConfirmPasswordChanged extends SignUpEvent {
  final String comfirmPassword;

  SignUpConfirmPasswordChanged(this.comfirmPassword);
}

class LogupSubmitted extends SignUpEvent {}

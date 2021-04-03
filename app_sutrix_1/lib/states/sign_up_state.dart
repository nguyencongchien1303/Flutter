import 'package:app_sutrix_1/auth/form_sign_up_submission_status.dart';

class SignUpState {
  final String name;
  final String phoneNumber;
  final String password;
  final String comfirmPassword;

  final FormSignUpSubmissionStatus formSignUpStatus;

  SignUpState({
    this.name = '',
    this.phoneNumber = '',
    this.password = '',
    this.comfirmPassword = '',
    this.formSignUpStatus = const InitialFormStatus(),
  });

  SignUpState copyWith({
    String name,
    String phoneNumber,
    String password,
    String comfirmPassword,
    FormSignUpSubmissionStatus formSignUpStatus,
  }) {
    return SignUpState(
        name: name ?? this.name,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        password: password ?? this.password,
        comfirmPassword: comfirmPassword ?? this.comfirmPassword,
        formSignUpStatus: formSignUpStatus ?? this.formSignUpStatus);
  }
}

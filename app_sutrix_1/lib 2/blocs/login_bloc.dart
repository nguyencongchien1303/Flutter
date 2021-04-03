import 'dart:async';

import 'package:app_sutrix_1/validators/validation_login.dart';

class LoginBloc {
  StreamController _phoneNumberController = new StreamController();
  StreamController _passwordController = new StreamController();

  Stream get phoneNumberStream => _phoneNumberController.stream;
  Stream get passwordStream => _passwordController.stream;

  bool isValidInfo(String phoneNumber, String password) {
    if (!Validations.isValidPhoneNumber(phoneNumber)) {
      _phoneNumberController.sink.addError("Invalid phoneNumber or password");
      return false;
    }
    _phoneNumberController.sink.add("ok");
    if (!Validations.isValidPassword(password)) {
      _passwordController.sink.addError("Invalid phoneNumber or password");
      return false;
    }
    _passwordController.sink.add("ok");
    return true;
  }

  void dispose() {
    _phoneNumberController.close();
    _passwordController.close();
  }
}

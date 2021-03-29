import 'dart:async';

import 'package:app_sutrix_1/Validators/validationsFormSignIn.dart';

class LoginBloc {
  StreamController _phoneNumberController;
  StreamController _passwordController;

  bool isValidInfo(double phoneNumber, String password) {
    if (!ValidationFormLogin.isValidPhoneNumber(phoneNumber)) {
      _phoneNumberController.sink.addError("Phone number or password invalid");
      return false;
    }
    _phoneNumberController.add("ok");
    if (!ValidationFormLogin.isValidPassword(password)) {
      _passwordController.sink.addError("Phone number or password invalid");
      return false;
    }
    _passwordController.add("ok");
    return true;
  }

  void dispose() {
    _phoneNumberController.close();
    _passwordController.close();
  }
}

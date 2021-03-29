class ValidationFormLogin {
  static bool isValidPhoneNumber(double phone) {
    return phone != null;
  }

  static bool isValidPassword(String password) {
    return password != null && password.length > 6;
  }
}

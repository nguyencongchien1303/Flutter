class Validations {
  static bool isValidPhoneNumber(String phoneNumber) {
    return phoneNumber != null && phoneNumber.length > 6;
  }

  static bool isValidPassword(String password) {
    return password != null && password.length > 6;
  }
}

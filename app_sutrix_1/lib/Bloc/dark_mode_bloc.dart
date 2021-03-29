import 'dart:async';

class DarkModeBloc {
  StreamController _darkModeController;

  Stream get darkMode => _darkModeController.stream;

  bool isDarkMode(bool darkMode) {
    if (darkMode) {
      return false;
    }
    _darkModeController.add("ok");
    return true;
  }

  // void dispose() {
  //   _darkModeController.close();
  // }
}

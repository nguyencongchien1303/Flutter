import 'dart:async';

class DarkMode {
  StreamController _darkModeController = new StreamController();

  Stream get darkModeStream => _darkModeController.stream;

  bool isDarkMode(bool darkModeController) {
    // print(darkModeController);
    if (!darkModeController) {
      _darkModeController.sink.addError("background black");
      return darkModeController;
    } else {
      _darkModeController.sink.add("background white");
      return darkModeController;
    }
  }

  void dispose() {
    _darkModeController.close();
  }
}

import 'dart:async';

class ChangeInOut {
  StreamController _changeInOutController = new StreamController();

  Stream get changeInOutStream => _changeInOutController.stream;

  bool isChangeInOut(int changeInOutController) {
    // print(changeInOutController);
    if (changeInOutController == 1) {
      _changeInOutController.sink.addError("background black");
      print(_changeInOutController);
      return false;
    }
    _changeInOutController.sink.add("background white");
    return true;
  }

  void dispose() {
    _changeInOutController.close();
  }
}

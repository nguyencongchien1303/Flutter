import 'dart:async';

class ChangeInOut {
  StreamController _changeInOutController = new StreamController();

  Stream get changeInOutStream => _changeInOutController.stream;

  bool isChangeInOut(int changeInOut) {
    if (changeInOut == 1) {
      print("a");
      _changeInOutController.sink.add(false);
      return false;
    }
    print("b");
    _changeInOutController.sink.add(true);
    return true;
  }

  void dispose() {
    _changeInOutController.close();
  }
}

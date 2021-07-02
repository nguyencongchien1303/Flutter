import 'package:get/get.dart';

class ControllerSelectedBottomSheet extends GetxController {
  var selected = 0.obs;
  void selectedBottomSheet(index) {
    selected.value = index;
    update();
  }
}

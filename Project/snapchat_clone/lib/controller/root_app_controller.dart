import 'package:get/get.dart';

class ControllerSelectedBottomSheet extends GetxController {
  var selected = 1.obs;
  void selectedBottomSheet(index) {
    selected.value = index;
    update();
  }
}

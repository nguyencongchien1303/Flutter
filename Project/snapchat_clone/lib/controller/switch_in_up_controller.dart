import 'package:get/get.dart';

class ControllerSwitchInUp extends GetxController {
  var sign_up = false.obs;
  void changeStatus(bool index) {
    sign_up.value = index;
    update();
  }
}

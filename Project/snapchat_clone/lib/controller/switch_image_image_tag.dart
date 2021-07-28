import 'package:get/get.dart';

class ControllerSwitchImageTag extends GetxController {
  var imageTag = false.obs;
  var indexImage = 0.obs;
  void changeStatus(bool index) {
    imageTag.value = index;
    if (index) {
      indexImage.value = 1;
    } else {
      indexImage.value = 0;
    }
    update();
  }
}

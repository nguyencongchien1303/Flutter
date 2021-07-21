import 'package:get/get.dart';
import 'package:snapchat_clone/languages/localization_service.dart';

class ControllerChangeLanguage extends GetxController {
  String _selectedLang = LocalizationService.locale.languageCode;
  var valueLang = (LocalizationService.locale.languageCode).obs;
  void changeLanguage(String value) {
    _selectedLang = value;
    valueLang.value = value;
  }
}

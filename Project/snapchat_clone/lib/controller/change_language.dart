import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:snapchat_clone/languages/localization_service.dart';

class ControllerChangeLanguage extends GetxController {
  String _selectedLang = LocalizationService.locale.languageCode;
  var valueLang = (LocalizationService.locale.languageCode).obs;
  final getStorage = GetStorage();
  final storageKey = "isLocale";

  void changeLanguage(value) {
    _selectedLang = value;
    valueLang.value = value;
    saveLocale(value);
  }

  void saveLocale(isLocale) {
    getStorage.write(storageKey, isLocale);
  }
}

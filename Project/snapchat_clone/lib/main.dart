import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:snapchat_clone/theme/theme_service.dart';

import 'controller/change_language.dart';
import 'languages/localization_service.dart';
import 'pages/root_app.dart';
import 'sign_in_up/welcome/welcome_screen.dart';
import 'theme/theme.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final controllerLocale = Get.put(ControllerChangeLanguage());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      themeMode: ThemeService().getThemeMode(),
      locale: controllerLocale.getStorage.read("isLocale") == 'en'
          ? LocalizationService.locale
          : Locale('vi_VN'),
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),
      // home: WelcomeScreen(),
      home: RootApp(),
    );
  }
}

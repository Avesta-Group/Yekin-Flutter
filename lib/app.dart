import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/controller_bindings.dart';
import 'package:my_puk_application/controllers/utilsControllers/language_controller.dart';
import 'package:my_puk_application/routes/routes.dart';
import 'package:my_puk_application/theme/themes.dart';
import 'package:my_puk_application/utils/app_constants.dart';
import 'package:my_puk_application/utils/messages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyApp extends StatelessWidget {
  final Map<String, Map<String, String>> languages;

  MyApp({Key? key, required this.languages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizationController>(
      builder: (localizationController) {
        SharedPreferences? sharedPreferences;

        // Initialize SharedPreferences
        SharedPreferences.getInstance().then((prefs) {
          sharedPreferences = prefs;
        });

        //print("value : " + sharedPreferences != null?sharedPreferences!.getString('currentTheme').toString():'');
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Refresh Project',
          locale: localizationController.locale,
          translations: Messages(languages: languages),
          fallbackLocale: Locale(
            AppConstants.languages[0].languageCode,
            AppConstants.languages[0].countryCode,
          ),
          theme: Themes().lightTheme,
          darkTheme: Themes().darkTheme,
          themeMode: sharedPreferences != null && sharedPreferences!.getString('currentTheme').toString() == 'dark'
              ? ThemeMode.dark
              : ThemeMode.light,
          initialBinding: ControllerBindings(),
          initialRoute: Routes.home,
          getPages: getPages,
        );
      },
    );
  }
}

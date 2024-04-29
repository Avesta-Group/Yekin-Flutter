import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/controller_bindings.dart';
import 'package:my_puk_application/controllers/utilsControllers/connectivity_controller.dart';
import 'package:my_puk_application/controllers/utilsControllers/language_controller.dart';
import 'package:my_puk_application/routes/routes.dart';
import 'package:my_puk_application/theme/themes.dart';
import 'package:my_puk_application/utils/app_constants.dart';
import 'package:my_puk_application/utils/messages.dart';

class MyApp extends StatelessWidget {
  final Map<String, Map<String, String>> languages;
  final ConnectivityController connectivityController = Get.put(ConnectivityController()); 

   MyApp({super.key, required this.languages});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizationController>(
      builder: (localizationController) {
        return GetMaterialApp( 
          builder: (context, child) {
            return Obx(() {
              if (connectivityController.connectionType == MConnectivityResult.none) {
                return const Scaffold(
                  body: Center(
                    child: Text('No Internet Connection'),
                  ),
                );
              } else {
                return child!;
              }
            });
          },
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
          themeMode:  ThemeMode.light,
          initialBinding: ControllerBindings(),
          initialRoute: Routes.register,
          getPages: getPages,
        );
      },
    );
  }
}

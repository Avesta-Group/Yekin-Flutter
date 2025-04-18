import 'dart:ui';
import 'package:get/get.dart';
import 'package:my_puk_application/models/language_model.dart';
import 'package:my_puk_application/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalizationController extends GetxController implements GetxService {
  final SharedPreferences sharedPreferences;

  LocalizationController({required this.sharedPreferences}) {
    loadCurrentLanguage();
  }

  Locale _locale = Locale(
    AppConstants.languages[0].languageCode,
    AppConstants.languages[0].countryCode,
  );

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  List<LanguageModel> _languages = [];
  Locale get locale => _locale;
  List<LanguageModel> get languages => _languages;

  void loadCurrentLanguage() {
    _locale = Locale(
      sharedPreferences.getString(AppConstants.LANGUAGE_CODE) ??
          AppConstants.languages[0].languageCode,
      sharedPreferences.getString(AppConstants.COUNTRY_CODE) ??
          AppConstants.languages[0].countryCode,
    );

    for (int index = 0; index < AppConstants.languages.length; index++) {
      if (AppConstants.languages[index].languageCode == _locale.languageCode) {
        _selectedIndex = index;
        break;
      }
    }
    _languages = [];
    _languages.addAll(AppConstants.languages);
    update();
  }

  void setLanguage(Locale locale) {
    Get.updateLocale(locale);
    _locale = locale;
    saveLanguage(_locale);
    update();
  }

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    update();
  }

  void saveLanguage(Locale locale) async {
    sharedPreferences.setString(AppConstants.LANGUAGE_CODE, locale.languageCode);
    sharedPreferences.setString(AppConstants.COUNTRY_CODE, locale.countryCode!);
  }

  void changeLanguageByCode(String languageCode) {
    for (int i = 0; i < _languages.length; i++) {
      if (_languages[i].languageCode == languageCode) {
        _selectedIndex = i;
        setLanguage(Locale(languageCode, _languages[i].countryCode));
        break;
      }
    }
  }
}

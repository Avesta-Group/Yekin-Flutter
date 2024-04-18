// ignore_for_file: constant_identifier_names


import 'package:flutter/material.dart';
import 'package:my_puk_application/models/language_model.dart';

class AppConstants {

  //Localization
  static const String COUNTRY_CODE = 'country_code';
  static const String LANGUAGE_CODE = 'language_code';

  static List<LanguageModel> languages = [
    LanguageModel(imageUrl: "🇺🇸", languageName: 'English', countryCode: 'US', languageCode: 'en',),
    LanguageModel(imageUrl: "ar", languageName: 'Arabic', countryCode: 'AR', languageCode: 'ar',),
    LanguageModel(imageUrl: "KU", languageName: 'Kurdish (Sorani)', countryCode: 'KU', languageCode: 'ku'),

  ];


  // Colors
  static const Color background = Colors.white;
  static const Color primaryColor = Color(0xFF102820);
  static const Color secondaryColor = Color(0xFF4C6445);
  static const Color tertiaryColor = Color(0xFFCABA9C);
  static const Color quaternaryColor = Color(0xFF8A6441);
  static const Color quinaryColor = Color(0xFF4D2E1A);

  //App Padding
  static const double appPadding = 20.0;
}
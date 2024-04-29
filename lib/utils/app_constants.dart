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
  static const Color background = Color(0xFFFFFFFF);
  static const Color primaryColor = Color(0xFF102820);
  static const Color secondaryColor = Color(0xFF4C6445); 
  static const Color tertiaryColor = Color(0xFFCABA9C);
  static const Color quaternaryColor = Color(0xffB6BAB9);
  static const Color quinaryColor = Color(0xFF4D2E1A);

  static const Color bg_auth_color = Color(0xFFE7E9E8);
  static const Color white = Colors.white;
  static const Color normal_green = Color(0xff475C40);
  static const Color hint_text_color = Color(0xff8D8D8D);



  //App Padding
  static const double appPadding = 20.0;


  //svg icons
  static const String puk_svg_icon =  '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M10 20C8.78333 19.85 7.575 19.5208 6.375 19.0125C5.175 18.5042 4.10417 17.775 3.1625 16.825C2.22083 15.875 1.45833 14.675 0.875 13.225C0.291667 11.775 0 10.0333 0 8V7H1C1.85 7 2.725 7.10833 3.625 7.325C4.525 7.54167 5.36667 7.86667 6.15 8.3C6.35 6.86667 6.80417 5.39583 7.5125 3.8875C8.22083 2.37917 9.05 1.08333 10 0C10.95 1.08333 11.7792 2.37917 12.4875 3.8875C13.1958 5.39583 13.65 6.86667 13.85 8.3C14.6333 7.86667 15.475 7.54167 16.375 7.325C17.275 7.10833 18.15 7 19 7H20V8C20 10.0333 19.7083 11.775 19.125 13.225C18.5417 14.675 17.7792 15.875 16.8375 16.825C15.8958 17.775 14.8292 18.5042 13.6375 19.0125C12.4458 19.5208 11.2333 19.85 10 20ZM9.95 17.95C9.76667 15.1833 8.94583 13.0917 7.4875 11.675C6.02917 10.2583 4.21667 9.38333 2.05 9.05C2.23333 11.9 3.07917 14.025 4.5875 15.425C6.09583 16.825 7.88333 17.6667 9.95 17.95ZM10 11.6C10.25 11.2333 10.5542 10.8542 10.9125 10.4625C11.2708 10.0708 11.6167 9.73333 11.95 9.45C11.9167 8.5 11.7292 7.50833 11.3875 6.475C11.0458 5.44167 10.5833 4.43333 10 3.45C9.41667 4.43333 8.95417 5.44167 8.6125 6.475C8.27083 7.50833 8.08333 8.5 8.05 9.45C8.38333 9.73333 8.73333 10.0708 9.1 10.4625C9.46667 10.8542 9.76667 11.2333 10 11.6ZM11.95 17.5C12.5667 17.3 13.2083 17.0083 13.875 16.625C14.5417 16.2417 15.1625 15.7208 15.7375 15.0625C16.3125 14.4042 16.8042 13.5833 17.2125 12.6C17.6208 11.6167 17.8667 10.4333 17.95 9.05C16.3833 9.28333 15.0083 9.80417 13.825 10.6125C12.6417 11.4208 11.7333 12.45 11.1 13.7C11.3 14.2333 11.4708 14.8167 11.6125 15.45C11.7542 16.0833 11.8667 16.7667 11.95 17.5Z" fill="#C3B393"/></svg>';
}
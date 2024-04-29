import 'package:flutter/material.dart';
import 'package:my_puk_application/utils/app_constants.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: AppConstants.primaryColor,
    colorScheme: ColorScheme.fromSeed(
      background: AppConstants.background,
      primary: AppConstants.secondaryColor,
      secondary: AppConstants.tertiaryColor,
      tertiary: AppConstants.quaternaryColor,
      seedColor: AppConstants.quinaryColor,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: AppConstants.secondaryColor,
        fontSize: 25,
        fontFamily: 'Inter', 
        letterSpacing: 1
      ),
      displayMedium: TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontFamily: 'Inter',
      ),

      bodyLarge: TextStyle(
        color: AppConstants.normal_green,
        fontSize: 18,
        fontFamily: 'Inter',
      ),

       bodyMedium: TextStyle(
        color: AppConstants.quaternaryColor,
        fontSize: 15,
        fontFamily: 'Inter',
      ),

      bodySmall: TextStyle(
        color: AppConstants.quaternaryColor,
        fontSize: 12,
        fontFamily: 'Inter',
      ),

      headlineLarge: TextStyle(
        color: AppConstants.hint_text_color,
        fontSize: 15,
        fontFamily: 'Inter',
      )
    ),

    
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle:  MaterialStateProperty.all<TextStyle?>(
          const TextStyle(
            color: AppConstants.white,
            fontSize: 15,
            fontFamily: 'Inter',
          )
        )  ,
        foregroundColor: MaterialStateProperty.all<Color>(AppConstants.background),
      ),
    ),
  );

  final darkTheme = ThemeData.light().copyWith();
}

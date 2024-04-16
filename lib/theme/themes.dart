import 'package:flutter/material.dart';
import 'package:my_puk_application/utils/app_constants.dart';

class Themes {

  final lightTheme = ThemeData.light().copyWith(
        primaryColor: AppConstants.primaryColor,
        colorScheme: ColorScheme.fromSeed(
          background:AppConstants.background,
          primary: AppConstants.secondaryColor,
          secondary: AppConstants.tertiaryColor,
          tertiary: AppConstants.quaternaryColor, 
          seedColor: AppConstants.quinaryColor,
        ),
        

        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.black,
            fontSize: 20
          ),

          displayMedium: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),


      textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(AppConstants.background), 
      ),
    ),

  );



  final darkTheme = ThemeData.light().copyWith();
}
import 'package:flutter/material.dart';

class Themes {

  final lightTheme = ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          primary: Colors.grey[50],
          secondary: Colors.grey,
          tertiary: Colors.grey,
        ),

        primaryColor: Colors.white,
        
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
  );



    final darkTheme = ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Colors.purple[850],
          secondary: Colors.grey,
          tertiary: Colors.white,
        ),

        primaryColor: Colors.purple[800],

        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),

          displayMedium: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
  );

}
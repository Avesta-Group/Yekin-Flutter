import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/middlewares/auth_middleware.dart';
import 'package:my_puk_application/screens/authScreens/create_account_screen.dart';
import 'package:my_puk_application/screens/login_screen.dart';

class Routes {
  static String home = '/';
  static String login = '/login';
  static String register = '/register';
  static String noInternet = '/noInternet';
}

final getPages = [
    GetPage(
     name: Routes.login,
     page: () =>  LoginScreen(),
    ),

   GetPage(
     name: Routes.register,
     page: () =>  CreateAccountScreen(),
    ),

     GetPage(
     name: Routes.home,
     page: () => const Center(
      child: Text('Home'),
     ),

     middlewares: [
      AuthMiddleware(priority: 1)
     ]
    ),
];
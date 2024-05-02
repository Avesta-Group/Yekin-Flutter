import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/middlewares/auth_middleware.dart';
import 'package:my_puk_application/screens/authScreens/ForgotPassword/forgot_password_screen.dart';
import 'package:my_puk_application/screens/authScreens/create_account_screen.dart';
import 'package:my_puk_application/screens/authScreens/select_language_screen.dart';
import 'package:my_puk_application/screens/authScreens/signin_screen.dart';
import 'package:my_puk_application/screens/authScreens/verifyPhone/add_phone_screen.dart';
import 'package:my_puk_application/screens/authScreens/verifyPhone/verify_phone_screen.dart';
import 'package:my_puk_application/screens/events_screen.dart';
import 'package:my_puk_application/screens/Home/home.dart';

class Routes {
  static String home = '/';
  static String selectLanguage = '/selectLanguage';
  static String signin = '/signin';
  static String signup = '/signup';
  static String forgotPassword = '/forgotPassword';
  static String addPhone = '/addPhone';
  static String verifyPhone = '/verifyPhone';
  static String events = '/events';
  static String noInternet = '/noInternet';
}

final getPages = [
    GetPage(
     name: Routes.selectLanguage,
     transition: Transition.fadeIn,
     page: () =>  const SelectLanguageScreen(),
     
    ),

    GetPage(
     name: Routes.signin,
     transition: Transition.fadeIn,
     page: () =>  SigninScreen(),
     
    ),

   GetPage(
     name: Routes.signup,
     transition: Transition.fadeIn,
     page: () =>  CreateAccountScreen(),
    ),

   GetPage(
     name: Routes.forgotPassword,
     transition: Transition.fadeIn,
     page: () =>  ForgotPasswordScreen(),
    ),

   GetPage(
     name: Routes.addPhone,
     transition: Transition.fadeIn,
     page: () =>  AddPhoneScreen(),
    ),

   GetPage(
     name: Routes.verifyPhone,
     transition: Transition.fadeIn,
     page: () =>  VerifyPhoneScreen(),
    ),

    
   GetPage(
     name: Routes.events,
     transition: Transition.fadeIn,
     page: () =>   EventsScreen(),
    ),

     GetPage(
     name: Routes.home,
     transition: Transition.fadeIn,
     page: () =>   HomeScreen(),

    //  middlewares: [
    //   AuthMiddleware(priority: 1)
    //  ]
    ),
];
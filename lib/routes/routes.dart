import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/middlewares/auth_middleware.dart';
import 'package:my_puk_application/screens/app_events_screen.dart';
import 'package:my_puk_application/screens/home/index.dart';
import 'package:my_puk_application/screens/authScreens/ForgotPassword/create_new_password_screen.dart';
import 'package:my_puk_application/screens/authScreens/ForgotPassword/forgot_password_screen.dart';
import 'package:my_puk_application/screens/authScreens/create_account_screen.dart';
import 'package:my_puk_application/screens/authScreens/select_language_screen.dart';
import 'package:my_puk_application/screens/authScreens/signin_screen.dart';
import 'package:my_puk_application/screens/authScreens/verifyPhone/add_phone_screen.dart';
import 'package:my_puk_application/screens/authScreens/verifyPhone/verify_phone_screen.dart';
import 'package:my_puk_application/screens/events_screen.dart';
import 'package:my_puk_application/screens/home/home.dart';

class Routes {
  static String index = '/';
  static String selectLanguage = '/selectLanguage';
  static String signin = '/signin';
  static String signup = '/signup';
  static String forgotPassword = '/forgotPassword';
  static String addPhone = '/addPhone';
  static String verifyPhone = '/verifyPhone';
  static String createNewPassword = '/createNewPassword';
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
     name: Routes.createNewPassword,
     transition: Transition.fadeIn,
     page: () =>  CreateNewPasswordScreen(),
    ),

   GetPage(
     name: Routes.noInternet,
     transition: Transition.fadeIn,
     page: () =>   AppEventScreen(imgPath: 'assets/images/no_intenet_img.png', title: 'No internet Connection', 
                                  subTitle: 'Know your driver in advance and be able to view current location in real time on the map',
                                  buttonTitle: 'Refresh', onPressed: (){}),
    ),
    
   GetPage(
     name: Routes.events,
     transition: Transition.fadeIn,
     page: () =>   EventsScreen(),
    ),

     GetPage(
     name: Routes.index,
     transition: Transition.fadeIn,
     page: () =>   IndexScreen(),

    //  middlewares: [
    //   AuthMiddleware(priority: 1)
    //  ]
    ),
];
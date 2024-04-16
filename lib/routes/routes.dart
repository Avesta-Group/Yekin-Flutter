import 'package:get/get.dart';
import 'package:my_puk_application/screens/connectivity_screen.dart';
import 'package:my_puk_application/screens/login_screen.dart';

class Routes {
  static String home = '/';
  static String login = '/login';
  static String register = '/register';
  static String noInternet = '/noInternet';
}

final getPages = [
    GetPage(
     name: Routes.home,
     page: () =>  LoginScreen(),
    ),
];
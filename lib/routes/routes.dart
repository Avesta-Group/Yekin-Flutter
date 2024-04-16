import 'package:get/get.dart';
import 'package:my_puk_application/screens/login_screen.dart';

class Routes {
  static String home = '/';
  static String login = '/login';
  static String register = '/register';
}

final getPages = [
    GetPage(
     name: Routes.home,
     page: () =>  LoginScreen(),
    ),
];
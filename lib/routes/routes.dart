import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Routes {
  static String home = '/';
  static String login = '/login';
  static String register = '/register';
}

final getPages = [
    GetPage(
     name: Routes.home,
     page: () =>  Container(),
    ),
];
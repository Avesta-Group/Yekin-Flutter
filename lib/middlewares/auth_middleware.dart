import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/routes/routes.dart';

class AuthMiddleware extends GetMiddleware {

  @override
  int? priority = 1;

  AuthMiddleware({this.priority});

  @override
  RouteSettings? redirect(String? route) {
    // Check if the user is authenticated
    if (true
     //!AuthService.to.isAuthenticated
       ) {
      // If not authenticated, redirect to the login page
      return RouteSettings(name: Routes.login);
    }
    // If authenticated, allow the route to proceed
    //return null;
  }
}

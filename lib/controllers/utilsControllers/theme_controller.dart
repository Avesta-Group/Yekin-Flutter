import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  var currentTheme = ThemeMode.system;

  void switchTheme() {
    currentTheme = currentTheme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    saveTheme(currentTheme == ThemeMode.light ? 'dark' : 'light');
    update();
  }

  void saveTheme(String currentTheme) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString("currentTheme", currentTheme);
  }
}

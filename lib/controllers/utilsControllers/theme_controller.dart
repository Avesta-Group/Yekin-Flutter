import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  var currentTheme = ThemeMode.light;

  @override
  void onInit() {
    super.onInit();
    getCurrentTheme();
  }
  
  void switchTheme() {
    currentTheme = currentTheme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    saveTheme(currentTheme == ThemeMode.light ? 'light' : 'dark');
    update();
  }

  void saveTheme(String currentTheme) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString("currentTheme", currentTheme);
  }
  
  Future<ThemeMode> getCurrentTheme() async {
    final SharedPreferences prefs = await _prefs;
   
    final String? savedTheme = prefs.getString('currentTheme');

    if (savedTheme != null && savedTheme.toString() == 'dark') {
      currentTheme = ThemeMode.dark;
    } else if (savedTheme != null && savedTheme.toString() == 'light') {
      currentTheme = ThemeMode.light;
    } else { 
      currentTheme = ThemeMode.light;
    }
    
    update();

    return currentTheme;
  }
}

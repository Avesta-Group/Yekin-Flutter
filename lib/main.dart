import 'package:flutter/material.dart';
import 'package:my_puk_application/app.dart';
import 'utils/dependency_inj.dart' as dep;
import 'package:flutter_native_splash/flutter_native_splash.dart';


Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // ignore: no_leading_underscores_for_local_identifiers
  Map<String, Map<String, String>> _languages = await dep.init();


  FlutterNativeSplash.remove();
  runApp(MyApp(languages: _languages));
}

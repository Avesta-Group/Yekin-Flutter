import 'package:get/get.dart';
import 'package:my_puk_application/controllers/utilsControllers/theme_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<ThemeController>(ThemeController());
  }
}
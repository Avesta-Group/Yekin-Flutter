import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/controllers/utilsControllers/connectivity_controller.dart';

class ConnectivityCheckScreen extends StatelessWidget {
  const ConnectivityCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ConnectivityController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Internet Connection'),
      ),
      body: Center(
        child: Obx(() => Text(
              controller.connectionType == MConnectivityResult.wifi
                  ? "Wifi Connected"
                  : controller.connectionType == MConnectivityResult.mobile
                      ? 'Mobile Data Connected'
                      : 'No Internet Available',
              style: const TextStyle(fontSize: 20),
            )),
      ),
    );
  }
}
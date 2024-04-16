import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/api/dio_client.dart';
import 'package:my_puk_application/components/button_widget.dart';
import 'package:my_puk_application/components/textfiled_widget.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

    final DioClient dioClient = DioClient();

    final _userNameController = TextEditingController();
    final _pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.all(20),
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Icon(
                  Icons.arrow_back,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
              SizedBox(
                width: Get.width,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: Get.height / 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'login'.tr,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Enter necessary information to begin an amazing journey',
                          style: Theme.of(context).textTheme.displayMedium,
                          textAlign: TextAlign.center,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: TextFieldWidget(
                          labelText: 'Username',
                          hintText: 'Please Input Full userName',
                          controller: _userNameController,
                          onChanged: (value) {},
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: TextFieldWidget(
                          labelText: 'Password',
                          hintText: 'Please Input Username',
                          obscureText: true,
                          controller: _pwdController,
                          onChanged: (value) {},
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: ButtonWidget(
                          text: "login".tr,
                          onPressed: () async {
                            final response = await dioClient.getResource(id: 2, model: 'users');
                            print(response);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

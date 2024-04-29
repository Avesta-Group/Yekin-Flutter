
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/api/auth/google_signin_api.dart';
import 'package:my_puk_application/api/dio_client.dart';
import 'package:my_puk_application/components/button_widget.dart';
import 'package:my_puk_application/components/textfiled_widget.dart';
import 'package:my_puk_application/models/user_model.dart';
import 'package:my_puk_application/utils/app_constants.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

   final _formKey = GlobalKey<FormState>();

    final DioClient dioClient = DioClient();

    final _userNameController = TextEditingController();
    final _pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(AppConstants.appPadding),
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
                    child: Form(
                      key: _formKey,
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
                              hintText: 'Please Input Full userName',
                              controller: _userNameController,
                              onChanged: (value) {},
                            ),
                          ),
                              
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: TextFieldWidget(
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
                              color: Theme.of(context).colorScheme.primary,
                              onPressed: () async {
                              
                              //  final user = UserModel(
                              //   name: '_nameController.text',
                              //   job: '_emailController.text');
                              //   final response = await dioClient.createResource(model: 'users', body: user);
                              
                              // final user = UserModel(
                              //   name: "a",
                              //   job: "a",
                              //   email: '_nameController.text',
                              //  );
                              
                              //   final response = await dioClient.updateResource(model: 'users', body: user, id: 1);
                              
                              // final response = await dioClient.getResource(model: 'users', id: 1);
                      
                              // print("value $response");


                              _formKey.currentState!.validate();
                              // if(_formKey.currentState!.validate()){
                              //   Get.snackbar("Success", "Ba sarkawtwy validate" );
                              // }

                              },
                            ),
                          ),
                              
                          Padding(
                            padding: const EdgeInsets.only(top:90.0,bottom: 15),
                            child: Text(
                              'Or',
                              style: Theme.of(context).textTheme.displayLarge,
                              textAlign: TextAlign.center,
                            ),
                          ),
                              
                              
                           Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: ButtonWidget(
                              text: "Signin With Google".tr,
                              color: Colors.redAccent,
                              onPressed: () async {
                               final user = await GoogleSignInApi.login();
                              },
                            ),
                          ),
                              
                              
                          Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: ButtonWidget(
                              text: "Signin With Facebook".tr,
                              color: Colors.blueAccent,
                              onPressed: () async {
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

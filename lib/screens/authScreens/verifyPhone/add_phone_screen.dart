
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/api/dio_client.dart';
import 'package:my_puk_application/components/button_widget.dart';
import 'package:my_puk_application/components/textfiled_widget.dart';
import 'package:my_puk_application/utils/app_constants.dart';
import 'package:get/get.dart';


class AddPhoneScreen extends StatelessWidget {
   AddPhoneScreen({super.key});

   final _formKey = GlobalKey<FormState>();

    final DioClient dioClient = DioClient();

    final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child:  SizedBox(
          height: Get.height,
          width: Get.width,
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width,
                  height: Get.height * 0.2,
                  color: AppConstants.bg_auth_color,
                 child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: Get.width * 0.13,
                        height: Get.height * 0.1,
                        child: CircleAvatar(
                        backgroundColor:
                            Theme.of(context).colorScheme.primary,
                        child: SvgPicture.string(AppConstants.puk_svg_icon,
                        fit: BoxFit.contain,
                        width: Get.width * 0.03,
                        height: Get.height * 0.03,
                        ),
                      ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text("My PUK",
                         style:  Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                    ],
                  ),
                ),


                Expanded(
                  child: Container(
                    color: AppConstants.white,
                   child: SingleChildScrollView(
                    child: Padding(
                        padding: const EdgeInsets.all(AppConstants.appPadding),                     
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           
                           Text('enter_phone_number'.tr,
                            style: Theme.of(context).textTheme.bodyLarge,
                           ),
                        
                           Padding(
                            padding:const EdgeInsets.only(top: 2.0),
                            child:Text("auth_subtitle".tr,
                            style: Theme.of(context).textTheme.bodySmall,
                           ),
                           ),
                        
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: TextFieldWidget(
                                hintText: 'phone_number'.tr,
                                controller: _phoneController,
                                onChanged: (value) {},
                              ),
                            ),

                          ],
                        ),
                      ),
                    )),
                   ),
                  ),



                  Container(
                              color: AppConstants.white,
                              padding:  EdgeInsets.only(bottom: Get.height * 0.08,left: AppConstants.appPadding,right: AppConstants.appPadding),
                              child: ButtonWidget(
                                text: "continue".tr,
                                color: Theme.of(context).colorScheme.primary,
                                onPressed: () async {
                                _formKey.currentState!.validate();

                                Get.toNamed('verifyPhone');
                                },
                              ),
                            )
              ],
            ),
          ),
      ),
    );
  }
}

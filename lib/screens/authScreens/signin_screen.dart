
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/api/dio_client.dart';
import 'package:my_puk_application/components/button_widget.dart';
import 'package:my_puk_application/components/text_b_divider.dart';
import 'package:my_puk_application/components/textfiled_widget.dart';
import 'package:my_puk_application/screens/authScreens/widgets/have_account_or_no_widget.dart';
import 'package:my_puk_application/screens/authScreens/widgets/social_media_login_widget.dart';
import 'package:my_puk_application/utils/app_constants.dart';

class SigninScreen extends StatelessWidget {
   SigninScreen({super.key});

   final _formKey = GlobalKey<FormState>();

    final DioClient dioClient = DioClient();

    final _phoneController = TextEditingController();
    final _pwdController = TextEditingController();

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
                           
                           Text('signin'.tr,
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
                        
                              Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: TextFieldWidget(
                                hintText: 'password'.tr,
                                controller: _pwdController,
                                obscureText: true,
                                onChanged: (value) {},
                              ),
                            ),


                           Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: InkWell(
                                child: Text('forgot_password'.tr,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),

                                onTap: ()=> Get.toNamed('forgotPassword'),
                              ),
                            ),

                        
                             Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: ButtonWidget(
                                text: "signin".tr,
                                color: Theme.of(context).colorScheme.primary,
                                onPressed: () async {
                                _formKey.currentState!.validate();

                                Get.toNamed('addPhone');
                                },
                              ),
                            ),

                            
                        const Padding(
                           padding:  EdgeInsets.only(top: 30.0),
                            child:  TextBetweenDividerWidget(text:'or_sign_in_with')
                          ),


                        const Padding(
                           padding:  EdgeInsets.only(top: 30.0),
                            child:  SocialMediaLoginWidget()
                          ),

                        const AlreadyHaveAccountWidget(isFromSignin: true,)
                          ],
                        ),
                      ),
                    )),
                   ),
                  ),
              ],
            ),
          ),
      ),
    );
  }
}

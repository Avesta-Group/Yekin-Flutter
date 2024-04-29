
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/api/auth/google_signin_api.dart';
import 'package:my_puk_application/api/dio_client.dart';
import 'package:my_puk_application/components/button_widget.dart';
import 'package:my_puk_application/components/text_b_divider.dart';
import 'package:my_puk_application/components/textfiled_widget.dart';
import 'package:my_puk_application/models/user_model.dart';
import 'package:my_puk_application/utils/app_constants.dart';

class CreateAccountScreen extends StatelessWidget {
   CreateAccountScreen({super.key});

   final _formKey = GlobalKey<FormState>();

    final DioClient dioClient = DioClient();

    final _fullNameController = TextEditingController();
    final _emailController = TextEditingController();
    final _pwdController = TextEditingController();
    final _pwdConfirmController = TextEditingController();

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
                      )
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
                           
                           Text('Regester',
                            style: Theme.of(context).textTheme.bodyLarge,
                           ),
                        
                           Padding(
                            padding:const EdgeInsets.only(top: 2.0),
                            child:Text("Today is a new day. It's your day. You shape it. Sign in to start managing your projects.",
                            style: Theme.of(context).textTheme.bodySmall,
                           ),
                           ),
                        
                            Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: TextFieldWidget(
                                hintText: 'Full Name',
                                controller: _fullNameController,
                                onChanged: (value) {},
                              ),
                            ),
                        
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: TextFieldWidget(
                                hintText: 'Email Address',
                                controller: _emailController,
                                onChanged: (value) {},
                              ),
                            ),
                        
                              Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: TextFieldWidget(
                                hintText: 'Password',
                                controller: _pwdController,
                                obscureText: true,
                                onChanged: (value) {},
                              ),
                            ),
                        
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: TextFieldWidget(
                                hintText: 'Confirm Password',
                                controller: _pwdConfirmController,
                                obscureText: true,
                                onChanged: (value) {},
                              ),
                            ),
                        
                             Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: ButtonWidget(
                                text: "Create Account",
                                color: Theme.of(context).colorScheme.primary,
                                onPressed: () async {
                                _formKey.currentState!.validate();
                                },
                              ),
                            ),

                            
                        const Padding(
                           padding:  EdgeInsets.only(top: 30.0),
                            child:  TextBetweenDividerWidget(text:'Or sign in with')
                          )
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

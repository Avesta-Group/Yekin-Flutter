import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/routes/routes.dart';
import 'package:my_puk_application/utils/app_constants.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {

  final bool isFromSignin;
  const AlreadyHaveAccountWidget({
    super.key, 
    required this.isFromSignin
  });

  @override
  Widget build(BuildContext context) {
    return  Center(
                           child: Padding(
                             padding: const EdgeInsets.only(top: 30.0),
                              child:InkWell(
                                onTap: () => Get.toNamed(isFromSignin?Routes.signup:Routes.signin),
                                child: RichText(
                                  text: TextSpan(
                                    text: !isFromSignin?'already_have_account'.tr:'not_have_account'.tr,
                                    style: const TextStyle(
                                         color: AppConstants.quinaryColor,
                                         fontSize: 15,
                                         fontFamily: 'Inter',
                                     ),
                                    children: [
                                      TextSpan(
                                        text: isFromSignin?'signup'.tr:'signin'.tr,
                                        style: TextStyle(
                                         color: Theme.of(context).primaryColor,
                                         fontSize: 15,
                                         fontFamily: 'Inter',
                                     ),
                                      )
                                    ]
                                  )),
                              )
                            ),
                         );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/components/button_widget.dart';
import 'package:my_puk_application/components/button_with_icon_widget.dart';
import 'package:my_puk_application/utils/app_constants.dart';

class SocialMediaLoginWidget extends StatelessWidget {


  const SocialMediaLoginWidget({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Expanded(
              child:ButtonWithIconWidget(
                 text: "google".tr,
                 color: AppConstants.bg_auth_color,
                 onPressed: () async {}, 
                 icon: 'assets/icons/google_icon.png', 
                 circleColor: AppConstants.bg_auth_color,
              ),
            ),
             
            const SizedBox(width: 15,),

            Expanded(
              child:ButtonWithIconWidget(
                 text: "facebook".tr,
                 color: AppConstants.bg_auth_color,
                 onPressed: () async {}, 
                 icon: 'assets/icons/facebook_icon.png', 
                 circleColor: const Color(0xff1877F2),
              ),
            ),
        ],
        )
    );
  }
}

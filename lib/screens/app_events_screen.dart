import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/components/button_widget.dart';
import 'package:my_puk_application/utils/app_constants.dart';

// ignore: must_be_immutable
class AppEventScreen extends StatelessWidget {
  final String imgPath;
  final String title;
  final String subTitle;
  final String buttonTitle;
  final VoidCallback onPressed;
  

  AppEventScreen({
    super.key,
    required this.imgPath,
    required this.title,
    required this.subTitle,
    required this.buttonTitle,
    required this.onPressed
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child:Container(
          width: Get.width,
          height: Get.height,
           padding: const EdgeInsets.only(left: AppConstants.appPadding ,right: AppConstants.appPadding),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: Get.width * 0.5,
                    height: Get.height * 0.3,
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.tertiary,
                      backgroundImage: AssetImage(imgPath,),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Text(title,
                     style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ),
                  
                  
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Text(subTitle,
                     style: Theme.of(context).textTheme.bodySmall,
                     textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),

               ButtonWidget(
                    color: Theme.of(context).colorScheme.primary, 
                    text: buttonTitle,
                    onPressed: () {},
                  )
            ],
           ),
        )
      ),
    );
  }

}

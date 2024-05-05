import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/theme/themes.dart';
import 'package:my_puk_application/utils/app_constants.dart';

class PresidencyCardWidget extends StatelessWidget {
  final String imgLink;
  final String title;
  final String subTitle;
  
  PresidencyCardWidget({
    super.key,
    required this.imgLink,
    required this.title,
    required this.subTitle
    });

    
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.2,
      width: 200,
      decoration: BoxDecoration(
        color: AppConstants.white,
        borderRadius: BorderRadius.circular(10)
      ),

      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left:10.0,right:10.0),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){},
                  child: Icon(Icons.more_horiz,
                   color: Theme.of(context).colorScheme.tertiary,
                   ),
                )
              ],
             ),
          ),

           Padding(
            padding: const EdgeInsets.only(top: 10.0),
             child: SizedBox(
                height: 70,
                width: 70,
               child: CircleAvatar(
                backgroundImage: AssetImage(imgLink),
                ),
             ),
            ),
          

            Padding(
            padding: const EdgeInsets.only(top: 10.0),
             child: Text(title,
               style: Theme.of(context).textTheme.bodyLarge,
             ),
            ),

            Padding(
            padding: const EdgeInsets.only(top: 5.0),
             child: Text(subTitle,
               style: Theme.of(context).textTheme.headlineSmall,
             ),
            ),
        ],
      )
      
        );
  }
}

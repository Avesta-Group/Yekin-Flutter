import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainCardWidget extends StatelessWidget {
  final String imgPath;
  final String title;
  
  MainCardWidget({
    super.key,
    required this.imgPath,
    required this.title
    });

    
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.2,
      width: 125,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:   AssetImage(imgPath),
          fit: BoxFit.cover,
          opacity: 0.9
        ),
        borderRadius: BorderRadius.circular(10)
      ),

      child:Center(
            child: Text(title.tr,
             style: Theme.of(context).textTheme.headlineMedium,
            ),
          )
        );
  }
}

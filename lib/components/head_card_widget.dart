import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeadCardWidget extends StatelessWidget {
  final String imgLink;
  final String title;
  final String subTitle;
  
  HeadCardWidget({
    super.key,
    required this.imgLink,
    required this.title,
    required this.subTitle
    });

    
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: Get.height * 0.2,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
            image:   AssetImage(imgLink),
             fit: BoxFit.cover,
             opacity: 0.9
           ),
        borderRadius: BorderRadius.circular(10)
      ),
        ),

        Container(
          padding: const EdgeInsets.only(top:10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
               style: Theme.of(context).textTheme.bodyLarge,
              ),

              Padding(
                padding: const EdgeInsets.only(top:5.0),
                child: Text(subTitle,
               style: Theme.of(context).textTheme.bodySmall,
              ),
              )
            ],
          ),
        )
      ],
    ) ;
  }
}

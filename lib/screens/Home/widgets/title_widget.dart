import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  
  TitleWidget({
    super.key,
    required this.title,
    required this.onPressed,
    });

    
  @override
  Widget build(BuildContext context) {
    return  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                               Text(title.tr,
                                style: Theme.of(context).textTheme.bodyLarge,
                               ),
                  
                             InkWell(
                              onTap: () => onPressed,
                              child:Text('see_more'.tr,
                                style: Theme.of(context).textTheme.bodyMedium,
                               ),
                             )
                          ],
                        );
  }
}

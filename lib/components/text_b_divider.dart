import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class TextBetweenDividerWidget extends StatelessWidget {
  final String text;

  const TextBetweenDividerWidget({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Expanded(
              child: Container(
              height: 1,
               decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(100)
               ),
             ),
            ),
           Padding(
             padding: const EdgeInsets.only(left:8.0,right: 8.0),
             child: Text(text,
             style: Theme.of(context).textTheme.bodyLarge,
             ),
           ),
           Expanded(
              child: Container(
              height: 1,
               decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(100)
               ),
             ),
            ),
        ],
        )
    );
  }
}

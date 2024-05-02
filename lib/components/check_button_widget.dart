import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/utils/app_constants.dart';

class CheckButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Icon icon;
  final bool isPressed;
  final VoidCallback onPressed;

  const CheckButtonWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.isPressed,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
           color: isPressed ? AppConstants.hint_text_color : AppConstants.white,
           width: 1
        )
      ),
      child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isPressed ? AppConstants.bg_auth_color : AppConstants.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(text,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold
                    ),
                ),

                  const SizedBox(width: 10,),

                  Visibility(
                    visible: isPressed,
                    child: CircleAvatar(
                      backgroundColor:   Theme.of(context).colorScheme.primary,
                      maxRadius: 15,
                      child: Center(child: icon),
                    ),
                  ),
              ],
            ),
          ),  
      ),
    );
  }
}

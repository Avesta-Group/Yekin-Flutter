import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ButtonWithIconWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Color circleColor;
  final String icon;
  final VoidCallback onPressed;

  const ButtonWithIconWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.circleColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10)
      ),
      child: InkWell(
          onTap: onPressed,
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Image.asset(icon),
                const SizedBox(width: 10,),
              Text(text,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold
                  ),
              ),
            ],
          ),  
      ),
    );
  }
}

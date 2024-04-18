import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const ButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5)
      ),
      child: InkWell(
          onTap: onPressed,
          child: Center(
            child: Text(text,
            style:  TextStyle(
              color: Theme.of(context).colorScheme.background,
              fontWeight: FontWeight.bold
              ),
          ),
          ),   
      ),
    );
  }
}

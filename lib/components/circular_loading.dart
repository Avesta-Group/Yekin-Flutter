import 'package:flutter/material.dart';

class CircularLoadingWidget extends StatelessWidget {


  const CircularLoadingWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 15,
      height: 15,
      child: Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).colorScheme.primary,
        ),
      )
    );
  }
}

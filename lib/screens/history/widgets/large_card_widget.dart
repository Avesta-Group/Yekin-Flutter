import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LargeCardWidget extends StatelessWidget {
  final String imgPath;
  final String title;
  
  LargeCardWidget({
    super.key,
    required this.imgPath,
    required this.title
    });

    
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.27,
      width: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:   AssetImage(imgPath),
          fit: BoxFit.cover,
          opacity: 0.9
        ),
        borderRadius: BorderRadius.circular(10)
      ),

      child:Container( 
           padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title.tr,
                       style: Theme.of(context).textTheme.headlineMedium,
                    ),

                    Container(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          Icon(Icons.article,
                             color: Theme.of(context).colorScheme.secondary ,
                             size: 15,
                          ),

                          const SizedBox(width: 5,),

                          Text("138 Articles",
                           style: Theme.of(context).textTheme.headlineSmall,
                    ),
                        ],),
                    )
                  ],
                ),
      )
      
        );
  }
}


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/components/circular_loading.dart';
import 'package:my_puk_application/components/head_card_widget.dart';
import 'package:my_puk_application/controllers/bottom_nav_controller.dart';
import 'package:my_puk_application/controllers/home_controller.dart';
import 'package:my_puk_application/screens/Presidency/widgets/presidency_card_widget.dart';
import 'package:my_puk_application/screens/history/widgets/large_card_widget.dart';
import 'package:my_puk_application/screens/home/widgets/main_card_widget.dart';
import 'package:my_puk_application/screens/home/widgets/title_widget.dart';
import 'package:my_puk_application/utils/app_constants.dart';
import 'package:cached_network_image/cached_network_image.dart';


class HomeScreen extends StatelessWidget {
    HomeScreen({super.key});

    final HomeController homeController =   Get.put<HomeController>(HomeController());

    
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SizedBox(
          height: Get.height,
          width: Get.width,
          child:  SingleChildScrollView(
                scrollDirection: Axis.vertical,
            child: Column(
              children: [
                
                Container(
                  height: Get.height * 0.25,
                  width: Get.width,
                  padding: const EdgeInsets.only(top: 15),
                child: CarouselSlider(
                        options: CarouselOptions(
                            disableCenter: true,
                            autoPlay: true
                        ),
                        items: homeController.imgLinks
                           .map((item) => Container(
                            height: Get.height * 0.25,
                            width: Get.width,
                            color: Theme.of(context).colorScheme.tertiary,
                        child:  CachedNetworkImage(
                          fit:  BoxFit.cover,
                          imageUrl: item.toString(),
                           placeholder: (context, url) => const CircularLoadingWidget(),
                           errorWidget: (context, url, error) =>  Icon(Icons.error, color: Theme.of(context).colorScheme.primary,),
                          ),
                        
                      ))
                  .toList(),
                  )),
            
              Container(
                padding: const EdgeInsets.only(left: AppConstants.appPadding ,right: AppConstants.appPadding),
                child:  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                               Text('all_we_have_here'.tr,
                                style: Theme.of(context).textTheme.bodyLarge,
                               ),
                  
                             InkWell(
                              onTap: () => homeController.switchShow(),
                              child: Obx(() => Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                Text(homeController.isShowList.isTrue?'show'.tr:'hide'.tr,
                                style: Theme.of(context).textTheme.bodyMedium,
                               ),
                               const SizedBox(width: 5,),
                               Icon(homeController.isShowList.isTrue?Icons.arrow_drop_up:Icons.arrow_drop_down,
                                color: Theme.of(context).colorScheme.tertiary,
                               )
                              ],)),
                             )
                          ],
                        ),
                      ),
                  
                  
                 Container(
                  width: Get.width,
                  padding: const EdgeInsets.only(top:15),
                   child: Obx(() => Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    runSpacing: 10.0,
                    children: [
                     for(int index = 0; index < homeController.partImgLinks.length; index++)
                      index >= 6 && homeController.isShowList.isFalse ?  Container() :
                         MainCardWidget(imgPath: homeController.partImgLinks[index], title: homeController.partTitles[index].tr)
                    ],
                   ),
                  )),


                Container(
                  width: Get.width,
                  padding: const EdgeInsets.only(top:15),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      TitleWidget(title: 'history', onPressed: (){}),

                       Container(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for(int index = 0; index < homeController.partImgLinks.length; index++)
                                Row(
                                  children: [
                                    LargeCardWidget(imgPath: homeController.partImgLinks[index], title: homeController.partTitles[index]),
                                    const SizedBox(width: 10,)
                                  ],
                                )
                            ],
                          ),
                        ),
                      ),


                 Container(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleWidget(title: 'now_presidency', onPressed: (){}),
                             SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             for(int index = 0; index < homeController.partImgLinks.length; index++)
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: [
                                  PresidencyCardWidget(imgLink: homeController.partImgLinks[0], title: 'Flores, Juanita', subTitle: 'Head of Product Design'),
                                   const SizedBox(width: 10,)
                                ],
                              )
                            ),
                            ],
                          ),
                        ),
                          ],
                        ),
                      ), 

                 Container(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleWidget(title: 'malbands', onPressed: (){}),
                             SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             for(int index = 0; index < homeController.partImgLinks.length; index++)
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: [
                                  HeadCardWidget(imgLink: homeController.partImgLinks[0], title: 'Malband Name', subTitle: 'As Sulaimanyah'),
                                   const SizedBox(width: 10,)
                                ],
                              )
                            ),
                            ],
                          ),
                        ),
                          ],
                        ),
                      ), 
                                         
                     ],
                   )
                  )
                    ],
                  ),
              ),
            
            
              ],
            ),
          ),
       
      ),

    );
  }
}
